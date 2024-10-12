import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: const [
            Colors.purple,
            Colors.orange,
          ],
        ),
      ),
    ),
  );
}
