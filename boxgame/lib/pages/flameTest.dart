import 'package:boxgame/game/pause_button.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:boxgame/game/start_game.dart';
import 'package:flutter/services.dart';
import 'package:boxgame/game/pause_menu.dart';
import 'package:boxgame/game/score.dart';

class FlameTest extends StatelessWidget {
  const FlameTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initState();
    return Scaffold(
        body: GameWidget<Game>(game: StartGame(), initialActiveOverlays: const [
      PauseButton.ID,
      Score.ID
    ], overlayBuilderMap: {
      PauseButton.ID: (BuildContext context, Game gameRef) => PauseButton(
            gameRef: gameRef,
          ),
      PauseMenu.ID: (BuildContext context, Game gameRef) => PauseMenu(
            gameRef: gameRef,
          ),
      Score.ID: (BuildContext context, Game gameRef) => Score(
            gameRef: gameRef,
          ),
    }));
  }

  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
}
