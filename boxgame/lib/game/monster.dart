import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'start_game.dart';

class Monster extends SpriteComponent with HasHitboxes, Collidable {
  late final StartGame _game;
  bool _up = true;
  bool _down = false;
  final double _jumpHeight = 150;
  final double ySpeed = 250;
  final double xSpeed = 200;
  late final double _originY;
  final JoystickComponent joystick;

  Monster(this._game, this.joystick)
      : super(
          sprite: Sprite(_game.images.fromCache('purple_monster.png')),
          size: Vector2(64, 64),
        ) {
    x = 200;
    y = _originY = _game.screenHeight - _game.ground.height - height / 2;
    anchor = Anchor.center;

    addHitbox(HitboxCircle());
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (_up) {
      y -= dt * ySpeed;

      if (y < _originY - _jumpHeight) {
        _up = false;
        _down = true;
      }
    }

    if (_down) {
      y += dt * ySpeed;
      if (y > _originY) {
        _up = true;
        _down = false;
      }
    }

    if (!joystick.delta.isZero()) {
      x += joystick.relativeDelta[0] * xSpeed * dt;
    }

    // 邊界
    if (x < 32) {
      x = 32;
    }

    if (x > _game.screenWidth - 32) {
      x = _game.screenWidth - 32;
    }
  }
}
