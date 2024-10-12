import 'dart:math';

class GenerateRandDice {
  final randGenerator = Random();

  int getDiceRandNumbre() {
    return randGenerator.nextInt(6) + 1;
  }
}
