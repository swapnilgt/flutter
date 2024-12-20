
import 'package:adv_basics/ui/questions/answer_button.dart';
import 'package:adv_basics/domain/quiz_question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.quizQuestion, required this.onSelectAnswer,});

  final void Function(String answer) onSelectAnswer;

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
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 202, 152, 240),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...quizQuestion.getShuffledAnswers().map(
            (item) {
              return AnswerButton(
                onPressed: () {
                  onSelectAnswer(item);
                }, 
                buttonText: item,
              );
            },
          ),
        ],
      ),
    );
  }
}
