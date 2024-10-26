import 'package:adv_basics/ui/app_background.dart';
import 'package:adv_basics/ui/home_page.dart';
import 'package:adv_basics/ui/questions/questions_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  void onQuizCompleted() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        quizCompleted: onQuizCompleted,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: AppBackground(
          child: screenWidget,
        ),
      ),
    );
  }
}
