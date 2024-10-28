import 'package:adv_basics/data/questions.dart';

class SummaryDateUseCase {
  List<Map<String, Object>> getSummaryData(List<String> chosenAnswers) {

    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
        'is_correct': questions[i].answers[0] == chosenAnswers[i],
      });
    }

    return summary;
  }

}