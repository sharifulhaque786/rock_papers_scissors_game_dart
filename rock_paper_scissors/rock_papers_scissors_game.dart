import 'dart:io';
import 'dart:math';

enum Moves { rock, papers, scissors }

void main() {
  final rnd = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    var input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMoves;
      if (input == 'r') {
        playerMoves = Moves.rock;
      } else if (input == 'p') {
        playerMoves = Moves.papers;
      } else {
        playerMoves = Moves.scissors;
      }

      final random = rnd.nextInt(3);
      final aiMoves = Moves.values[random];
      print('Your Move: $playerMoves');
      print('AI Move: $aiMoves');
      if (playerMoves == aiMoves) {
        print('It\'s a draw.');
      } else if (playerMoves == Moves.rock && aiMoves == Moves.scissors ||
          playerMoves == Moves.papers && aiMoves == Moves.rock ||
          playerMoves == Moves.scissors && aiMoves == Moves.papers) {
        print('You Win.');
      } else {
        print('You Lose.');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Input.');
    }
  }
}
