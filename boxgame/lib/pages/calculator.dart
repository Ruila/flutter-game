import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  ImplementCalculator createState() => ImplementCalculator();
}

class ImplementCalculator extends State<Calculator> {
  var result = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(result.toString()),
            const SizedBox(height: 140),
            buttonBox()
          ],
        )));
  }

  Widget buttonBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 120,
          height: 40,
          child: ElevatedButton(
            child: const Text("Plus"),
            onPressed: () {
              setState(() {
                result += 1;
              });
            },
          ),
        ),
        SizedBox(
          width: 120,
          height: 40,
          child: ElevatedButton(
            child: const Text("Minus"),
            onPressed: () {
              setState(() {
                result -= 1;
              });
            },
          ),
        )
      ],
    );
  }
}
