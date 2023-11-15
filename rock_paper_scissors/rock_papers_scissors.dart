import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rdn = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    var input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMoves;
      if (input == 'r') {
        playerMoves = Move.rock;
      } else if (input == 'p') {
        playerMoves = Move.paper;
      } else {
        playerMoves = Move.scissors;
      }
      final random = rdn.nextInt(3);
      final aiMoves = Move.values[random];
      print('Your Move: $playerMoves');
      print('AI Move: $aiMoves');
      if (playerMoves == aiMoves) {
        print('It\'s a draw.');
      } else if (playerMoves == Move.rock && aiMoves == Move.scissors ||
          playerMoves == Move.paper && aiMoves == Move.rock ||
          playerMoves == Move.scissors && aiMoves == Move.paper) {
        print('You Win!');
      } else {
        print('No Result');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Input.');
    }
  }
}
