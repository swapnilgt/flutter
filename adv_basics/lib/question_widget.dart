import 'package:adv_basics/domain/quiz_question.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.quizQuestion});

  final QuizQuestion quizQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(quizQuestion.text),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 1'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 3'),
        ),
      ],
    );
  }
}
