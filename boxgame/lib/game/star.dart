import 'dart:collection';
import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'start_game.dart';
import 'monster.dart';

class Star extends SpriteComponent with HasHitboxes, Collidable {
  late final StartGame _game;
  final Random _rnd = Random();
  bool _collision = false;
  Star(this._game)
      : super(
          sprite: Sprite(_game.images.fromCache('star.png')),
        ) {
    position = getNewStarPosition();
    addHitbox(HitboxCircle());
  }

  Vector2 getNewStarPosition() {
    return Vector2(_rnd.nextDouble() * 800, _rnd.nextDouble() * 100 + 150);
  }

  @override
  void update(double dt) {
    if (_collision) {
      position = getNewStarPosition();
      _collision = false;
    }
    super.update(dt);
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    super.onCollision(intersectionPoints, other);
    if (other is Monster) {
      _collision = true;
    }
  }
}
