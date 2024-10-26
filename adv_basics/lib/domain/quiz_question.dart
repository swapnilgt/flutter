class QuizQuestion {

  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final listCopy = List.of(answers);
    listCopy.shuffle();
    return listCopy;
  }

}