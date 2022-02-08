// Copyright 2019 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/animations.dart';
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
    _AlbumsPage(),
    _PhotosPage(),
    _SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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

class _ExampleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Card(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black26,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Ink.image(
                        image: const AssetImage(
                          'assets/images/ground.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'localizations.demoFadeThroughTextPlaceholder',
                        style: textTheme.bodyText1,
                      ),
                      Text(
                        'localizations.demoFadeThroughTextPlaceholder',
                        style: textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              splashColor: Colors.black38,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _AlbumsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          3,
          (index) => Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _ExampleCard(),
                _ExampleCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _PhotosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ExampleCard(),
        _ExampleCard(),
      ],
    );
  }
}

class _SearchPage extends StatelessWidget {
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
      itemCount: 10,
    );
  }
}
