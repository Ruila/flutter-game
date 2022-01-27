import 'package:flame/game.dart';
import 'package:flutter/material.dart';

// This class represents the pause button overlay.
class Score extends StatelessWidget {
  static const String ID = 'Score';
  final Game gameRef;

  const Score({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: Row(children: [
            Image.asset(
              'assets/images/star.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            const Text("x 0",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ))
          ]),
        ));
  }
}
