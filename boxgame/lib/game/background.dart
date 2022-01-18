import 'package:flame/components.dart';
import 'start_game.dart';

class Background extends SpriteComponent {
  Background(StartGame _game)
      : super(
          sprite: Sprite(
            _game.images.fromCache('background.jpeg'),
          ),
          size: Vector2(_game.screenWidth, _game.screenHeight),
        );
}
