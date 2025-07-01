import 'dart:async';
import 'package:flame/components.dart';

class Player extends SpriteComponent with HasGameReference {
  @override
  FutureOr<void> onLoad() async {
    sprite = await game.loadSprite('cowSprite.png');
    return super.onLoad();
  }
}
