import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/domain/quiz_question.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.quizQuestion});

  final QuizQuestion quizQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          quizQuestion.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ...quizQuestion.answers.map(
          (item) {
            return AnswerButton(
              onPressed: () {},
              buttonText: item,
            );
          },
        ),
      ],
    );
  }
}
