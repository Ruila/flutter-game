import 'package:flutter/material.dart';

class PageTest extends StatelessWidget {
  const PageTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page2"),
        ),
        body: const Center(
          child: Text('Page02'),
        ));
  }
}
