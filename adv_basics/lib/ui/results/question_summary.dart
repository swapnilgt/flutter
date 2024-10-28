import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: data['is_correct'] as bool ? const Color.fromARGB(255, 61, 160, 242) : const Color.fromARGB(255, 189, 53, 213), // Background color
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 154, 93, 224),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 70, 160, 240),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
