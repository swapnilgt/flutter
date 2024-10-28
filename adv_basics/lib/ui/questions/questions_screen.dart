import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/ui/questions/question_widget.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
      {super.key, required this.onSelectAnswer, required this.quizCompleted});

  final void Function(String answer) onSelectAnswer;

  final void Function() quizCompleted;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestion = 0;

  void handleQuestionClick(String chosenAnswer) {
    setState(() {
      // Adding answer to the list.
      widget.onSelectAnswer(chosenAnswer);
      // checking the length.
      if (currentQuestion < questions.length - 1) {
        // passing answer to the quiz.
        currentQuestion++;
      } else {
        // redirect.
        widget.quizCompleted();
      }
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
            onSelectAnswer: handleQuestionClick,
          ),
        ],
      ),
    );
  }
}
