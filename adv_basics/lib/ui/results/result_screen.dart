import 'package:adv_basics/domain/usecase/summary_date_use_case.dart';
import 'package:adv_basics/ui/results/question_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.chosenAnswers,
      required this.correctlyAnswered,
      required this.onRestartClicked});

  final List<String> chosenAnswers;
  final int correctlyAnswered;
  final void Function() onRestartClicked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have answered $correctlyAnswered questions correctly out of ${chosenAnswers.length}",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 202, 152, 240),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(
              summaryData: SummaryDateUseCase().getSummaryData(chosenAnswers),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestartClicked,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text("Restart Quiz"),
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
      ),
    );
  }
}
