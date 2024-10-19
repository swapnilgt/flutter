import 'package:adv_basics/app_background.dart';
import 'package:adv_basics/home_page.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  Widget activeScreen = const HomePage(switchScreen);

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AppBackground(
          child: activeScreen,
        ),
      ),
    );
  }
}
