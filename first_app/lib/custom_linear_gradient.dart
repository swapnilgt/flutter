import 'package:flutter/material.dart';

class CustomLinearGradient extends LinearGradient {
  const CustomLinearGradient({
    required super.colors,
    super.begin = Alignment.topLeft,
    super.end = Alignment.bottomRight,
  });
}
