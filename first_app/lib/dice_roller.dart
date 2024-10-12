import 'package:first_app/usecases/generate_rand_dice.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      var diceNum = GenerateRandDice().getDiceRandNumbre();
      switch (diceNum) {
        case 0:
          activeDiceImage = 'assets/images/dice-1.png';
          break;
        case 1:
          activeDiceImage = 'assets/images/dice-2.png';
          break;
        case 2:
          activeDiceImage = 'assets/images/dice-3.png';
          break;
        case 3:
          activeDiceImage = 'assets/images/dice-4.png';
          break;
        case 4:
          activeDiceImage = 'assets/images/dice-5.png';
          break;
        case 5:
          activeDiceImage = 'assets/images/dice-6.png';
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: () {
            rollDice();
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
    );
  }
}
