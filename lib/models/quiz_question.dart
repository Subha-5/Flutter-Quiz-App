class QuizQuestion {
  const QuizQuestion(this.text, this.options);

  final String text;
  final List<String> options;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  } // getter
}
