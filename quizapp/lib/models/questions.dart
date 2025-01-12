class Questions {
  const Questions(this.question, this.choice);

  final String question;
  final List<String> choice;

  List<String> getShuffle() {
    final shuffleList = List.of(choice);
    shuffleList.shuffle();
    return shuffleList;
  }
}
