import 'dart:io';
import 'dart:math';

enum Move { rock, papers, scissors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playersMove;
      if (input == 'r') {
        playersMove = Move.rock;
      } else if (input == 'p') {
        playersMove = Move.papers;
      } else {
        playersMove = Move.scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('Your Move: $playersMove');
      print('AI Move: $aiMove');
      if (playersMove == aiMove) {
        print("It's a draw.");
      } else if (playersMove == Move.rock && aiMove == Move.scissors ||
          playersMove == Move.papers && aiMove == Move.rock ||
          playersMove == Move.scissors && aiMove == Move.papers) {
        print('You Win.');
      } else {
        print('You Lose.');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Input');
    }
  }
}
