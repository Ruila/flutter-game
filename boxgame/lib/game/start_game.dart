import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import 'background.dart';
import 'ground.dart';
import 'monster.dart';
import 'star.dart';

class StartGame extends FlameGame
    with HasDraggables, HasCollidables, HasTappables {
  final double screenWidth = MediaQueryData.fromWindow(window).size.width;
  final double screenHeight = MediaQueryData.fromWindow(window).size.height;

  late Ground ground;

  static const _assetsImages = [
    'purple_monster.png',
    'background.jpeg',
    'ground.png',
    'star.png',
    'gear.png'
  ];

  @override
  Future<void> onLoad() async {
    await images.loadAll(_assetsImages);
    final knobPaint = BasicPalette.blue.withAlpha(200).paint();
    final backgroundPaint = BasicPalette.blue.withAlpha(100).paint();

    final joystick = JoystickComponent(
      knob: CircleComponent(radius: 15, paint: knobPaint),
      background: CircleComponent(radius: 60, paint: backgroundPaint),
      margin: const EdgeInsets.only(left: 30, bottom: 40),
    );

    final background = Background(this);
    ground = Ground(this);
    add(joystick);
    final monster = Monster(this, joystick);
    final star = Star(this);
    addAll([background, ground, monster, star]);
  }
}
