import 'package:first_app/usecases/generate_rand_dice.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Get Random number',
    () {
      int expectedValue = GenerateRandDice().getDiceRandNumbre();
      bool correct = false;
      if(expectedValue < 6 && expectedValue >=0) {
        correct = true;
      }
      expect(true, correct);
    },
  );
}
