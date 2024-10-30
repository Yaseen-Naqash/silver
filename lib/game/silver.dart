import 'package:flame/game.dart';
import 'package:silver/game/component/table.dart';

class Silver extends FlameGame {
  @override
  Future<void> onLoad() async {
    add(Table());
  }
}