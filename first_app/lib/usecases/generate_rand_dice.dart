import 'dart:math';

class GenerateRandDice {
  int getDiceRandNumbre() {
    return Random.secure().nextInt(6);
  }
}
