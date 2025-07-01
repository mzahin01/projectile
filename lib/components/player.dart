import 'dart:async';
import 'package:flame/components.dart';

class Player extends SpriteAnimationComponent with HasGameReference {
  @override
  FutureOr<void> onLoad() async {
    animation = await game.loadSpriteAnimation(
      'cowSprite.png',
      SpriteAnimationData.sequenced(
        amount: 6, // Total number of frames in your animation
        amountPerRow: 3, // The number of frames per row
        stepTime: .1, // The time to display each frame
        textureSize: Vector2(250, 160), // The size of a single frame
      ),
    );
    return super.onLoad();
  }
}
