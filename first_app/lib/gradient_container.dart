import 'package:first_app/custom_linear_gradient.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    required this.gradientColors,
    super.key,
  });

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: CustomLinearGradient(
          colors: gradientColors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
