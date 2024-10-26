import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_widget.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestion = 0;

  void handleQuestionClick() {
    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionWidget(
            quizQuestion: questions[currentQuestion],
            onClickAnswer: handleQuestionClick,
          ),
        ],
      ),
    );
  }
}
