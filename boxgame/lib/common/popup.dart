import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<Popup> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _tween;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    final animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _tween = Tween<double>(begin: 1.0, end: 0.0).animate(animation);
    _controller
      ..addListener(() {
        setState(() {
          debugPrint('${_tween.value}');
        });
      })
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(
          0.0,
          _tween.value *
              (MediaQuery.of(context).size.height / 2 +
                  MediaQuery.of(context).size.width / 2),
          0.0),
      child: Center(
        child: Card(
          child: Container(
              padding: const EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 60.0,
                    ),
                    Text(
                      'Success',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )
                  ])),
        ),
      ),
    );
  }
}
