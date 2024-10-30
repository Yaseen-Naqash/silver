import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';

import 'package:silver/asssets.dart';
import 'package:silver/game/silver.dart';

class Table extends SpriteComponent with HasGameRef<Silver>{
  Table();

  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.background);
    size = gameRef.size;
    sprite = Sprite(background);
  }
}