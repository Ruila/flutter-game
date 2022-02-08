import 'package:flutter/material.dart';

class NSearchPage extends StatelessWidget {
  const NSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            'assets/images/star.png',
            width: 40,
          ),
          title:
              Text('localizations.demoMotionListTileTitle' + ' ${index + 1}'),
          subtitle: const Text('dfsfs'),
        );
      },
      itemCount: 16,
    );
  }
}
