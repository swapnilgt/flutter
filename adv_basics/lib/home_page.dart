import 'package:adv_basics/app_background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(void Function() startQuiz, {super.key,});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(144, 244, 255, 255),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
