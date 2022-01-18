import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:boxgame/game/start_game.dart';

class FlameTest extends StatelessWidget {
  const FlameTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stars',
      theme: ThemeData.dark(),
      home: Scaffold(body: GameWidget<Game>(game: StartGame())),
    );
  }
}
