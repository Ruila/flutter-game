// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/animations.dart';
import 'package:boxgame/fadeTransition/NAlbumsPage.dart';
import 'package:boxgame/fadeTransition/NPhotosPage.dart';
import 'package:boxgame/fadeTransition/NSearchPage.dart';
import 'package:flutter/material.dart';

class FadeThroughTransitionDemo extends StatefulWidget {
  const FadeThroughTransitionDemo({Key? key}) : super(key: key);

  @override
  _FadeThroughTransitionDemoState createState() =>
      _FadeThroughTransitionDemoState();
}

class _FadeThroughTransitionDemoState extends State<FadeThroughTransitionDemo> {
  int _pageIndex = 0;

  final _pageList = <Widget>[
    const NAlbumsPage(),
    const NPhotosPage(),
    const NSearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Column(
          children: [
            const Text("aaaxx"),
            Text(
              'aaa',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (
          child,
          animation,
          secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: _pageList[_pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (selectedIndex) {
          setState(() {
            _pageIndex = selectedIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: "xx",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: "vvv",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "fff",
          ),
        ],
      ),
    );
  }
}
