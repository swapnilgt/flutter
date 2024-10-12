import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText(this.inputText, {super.key});

  // ignore: prefer_typing_uninitialized_variables
  final String inputText;

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: const TextStyle(
        color: Color.fromARGB(255, 89, 4, 226),
        fontSize: 28,
      ),
    );
  }
}
