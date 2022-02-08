import 'package:flutter/material.dart';

class NPhotosPage extends StatelessWidget {
  const NPhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...List.generate(15, (index) {
          return SizedBox(
              width: 300,
              height: 300,
              child: Material(
                child: InkWell(
                  splashColor: Colors.black38,
                  onTap: () {
                    print("xsd");
                  },
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
                      ListTile(
                        title: Text('card' ' ${index + 1}'),
                        subtitle: const Text(
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
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: Colors.black54,
                                    inherit: false,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        }),
      ],
    );
  }
}
