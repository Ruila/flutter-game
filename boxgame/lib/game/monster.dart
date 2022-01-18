import 'package:flame/components.dart';
import 'start_game.dart';

class Monster extends SpriteComponent {
  late final StartGame _game;
  bool _up = true;
  bool _down = false;
  final double _jumpHeight = 150;
  final double ySpeed = 300;
  final double xSpeed = 200;
  late final double _originY;

  Monster(this._game)
      : super(
          sprite: Sprite(_game.images.fromCache('purple_monster.png')),
          size: Vector2(64, 64),
        ) {
    x = 200;
    y = _originY = _game.screenHeight - _game.ground.height - height / 2;
    anchor = Anchor.center;
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
  }
}
