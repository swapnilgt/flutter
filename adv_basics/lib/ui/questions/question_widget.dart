import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/domain/quiz_question.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.quizQuestion, required this.onClickAnswer});

  final void Function() onClickAnswer;

  final QuizQuestion quizQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quizQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...quizQuestion.getShuffledAnswers().map(
            (item) {
              return AnswerButton(
                onPressed: onClickAnswer,
                buttonText: item,
              );
            },
          ),
        ],
      ),
    );
  }
}
