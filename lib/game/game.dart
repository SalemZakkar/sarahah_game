import 'dart:math';

class Game {
  List<String> names = [];
  int getIndex()
  {
    int i = Random().nextInt(names.length);
    return i;
  }
}
Game game = Game();