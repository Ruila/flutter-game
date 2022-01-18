import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/palette.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import 'background.dart';
import 'ground.dart';
import 'monster.dart';

class StartGame extends FlameGame with HasDraggables, HasCollidables {
  final double screenWidth = MediaQueryData.fromWindow(window).size.width;
  final double screenHeight = MediaQueryData.fromWindow(window).size.height;

  late Ground ground;

  static const _assetsImages = [
    'purple_monster.png',
    'background.jpeg',
    'ground.png',
  ];

  @override
  Future<void> onLoad() async {
    await images.loadAll(_assetsImages);
    final knobPaint = BasicPalette.blue.withAlpha(200).paint();
    final backgroundPaint = BasicPalette.blue.withAlpha(100).paint();
    final image = await images.load('purple_monster.png');
    // final sheet = SpriteSheet.fromColumnsAndRows(
    //   image: image,
    //   columns: 6,
    //   rows: 1,
    // );
    // final joystick = JoystickComponent(
    //   knob: SpriteComponent(
    //     sprite: sheet.getSpriteById(1),
    //     size: Vector2.all(100),
    //   ),
    //   background: SpriteComponent(
    //     sprite: sheet.getSpriteById(0),
    //     size: Vector2.all(150),
    //   ),
    //   margin: const EdgeInsets.only(left: 30, bottom: 40),
    // );

    final background = Background(this);
    ground = Ground(this);
    // add(joystick);
    final monster = Monster(this);

    addAll([background, ground, monster]);
  }
}
