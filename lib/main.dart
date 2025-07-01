import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'my_game.dart';

void main() {
  final MyGame game = MyGame();
  runApp(GameWidget(game: game));
}
