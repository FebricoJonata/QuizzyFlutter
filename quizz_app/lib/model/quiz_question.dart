class QuizQuestion {
  final String text;
  final List<String> answer;

  const QuizQuestion(this.text, this.answer);

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
