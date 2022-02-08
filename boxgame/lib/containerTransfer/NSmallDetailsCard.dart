import 'package:boxgame/containerTransfer/NInkWellOverlay.dart';
import 'package:flutter/material.dart';

class NSmallDetailsCard extends StatelessWidget {
  const NSmallDetailsCard({
    required this.openContainer,
    required this.subtitle,
  });

  final VoidCallback openContainer;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return NInkWellOverlay(
      openContainer: openContainer,
      height: 225,
      width: 125,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.black38,
            height: 125,
            child: Center(
              child: Image.asset(
                'assets/images/gear.png',
                width: 400,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "small",
                    style: textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subtitle,
                    style: textTheme.caption,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
