import 'package:first_app/custom_linear_gradient.dart';
import 'package:first_app/usecases/generate_rand_dice.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer({
    required this.gradientColors,
    super.key,
  });

  final List<Color> gradientColors;

  var activeDiceImage = 'assets/images/dice-2.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: CustomLinearGradient(
          colors: gradientColors,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            TextButton(
              onPressed: () {
                var diceNum = GenerateRandDice().getDiceRandNumbre();
                switch (diceNum) {
                  case 0:
                    break;
                  case 1:
                  break;
                  case 2:
                  break;
                  case 3:
                  break;
                  case 4:
                  break;
                  case 5:
                  default:
                }
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
