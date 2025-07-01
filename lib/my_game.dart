import 'dart:async';
import 'components/player.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MyGame extends FlameGame {
  late Player player;

  @override
  FutureOr<void> onLoad() async {
    await Flame.device.fullScreen();
    await Flame.device.setLandscape();
    startGame();
    return super.onLoad();
  }

  void startGame() {
    _createPlayer();
  }

  void _createPlayer() {
    player = Player();
    add(player);
  }

  @override
  Color backgroundColor() {
    return Colors.white;
  }
}
