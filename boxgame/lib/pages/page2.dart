import 'package:boxgame/type/widgetItem.dart';
import 'package:flutter/material.dart';

import 'calculator.dart';

class PageTest extends StatelessWidget {
  const PageTest({Key? key}) : super(key: key);
  static const widgetList = ["calculator", "widget1", "widget2", "widget3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Page2")), body: _wigetBox(context));
  }

  Widget _wigetBox(BuildContext context) {
    return GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(widgetList.length, (index) {
          var flag = false;
          return GestureDetector(
            onTapDown: (value) {
              var whoami = widgetList[index];
              ChosePage(context, whoami);
            },
            child: Container(
              decoration: BoxDecoration(
                color: flag ? Colors.amber : Colors.white,
                border: Border.all(width: 1, color: Colors.black38),
                borderRadius: const BorderRadius.all(Radius.circular(3)),
              ),
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Text(widgetList[index]),
              ),
            ),
          );
        }));
  }

  ChosePage(BuildContext context, String whoami) {
    if (whoami == "calculator") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Calculator()));
    } else {
      print('You pressed me $whoami');
    }
  }
}
