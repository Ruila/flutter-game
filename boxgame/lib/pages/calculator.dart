import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                child: const Text("Plus"),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                child: const Text("Minus"),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}
