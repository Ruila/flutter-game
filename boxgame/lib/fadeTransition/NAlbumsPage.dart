import 'package:flutter/material.dart';

class NAlbumsPage extends StatelessWidget {
  const NAlbumsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          4,
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

class _ExampleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Card(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black26,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
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
