import 'package:flutter/cupertino.dart';
import 'package:boxgame/ui1/NInkWellOverlay.dart';
import 'package:flutter/material.dart';

class NDetailsCard extends StatelessWidget {
  const NDetailsCard({required this.openContainer});

  final VoidCallback openContainer;
  @override
  Widget build(BuildContext context) {
    return NInkWellOverlay(
      openContainer: openContainer,
      height: 300,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Colors.black38,
              child: Center(
                child: Image.asset(
                  'assets/images/star.png',
                  width: 100,
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text(
              "_DetailsCard",
            ),
            subtitle: Text(
              "_DetailsCard",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur '
              'adipiscing elit, sed do eiusmod tempor.',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Colors.black54,
                    inherit: false,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
