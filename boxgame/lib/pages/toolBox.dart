import 'package:boxgame/pages/flameTest.dart';
import 'package:boxgame/type/widgetItem.dart';
import 'package:flutter/material.dart';

import 'calculator.dart';

class ToolBox extends StatelessWidget {
  ToolBox({Key? key}) : super(key: key);
  final List<WidgetItem> widgetList = [
    WidgetItem("calculator"),
    WidgetItem("elf game"),
    WidgetItem("widget2"),
    WidgetItem("widget3")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tool Box"),
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Like'),
          icon: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pinkAccent,
        ),
        body: _wigetBox(context));
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
              var whoami = widgetList[index].name;
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
                child: Text(widgetList[index].name),
              ),
            ),
          );
        }));
  }

  ChosePage(BuildContext context, String whoami) {
    if (whoami == "calculator") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Calculator()));
    } else if (whoami == "elf game") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const FlameTest()));
    } else {
      print('You pressed me $whoami');
    }
  }
}
