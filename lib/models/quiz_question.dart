// this does not contain a widget, but contain question blueprint 
class QuizQuestion{
  const QuizQuestion(this.text, this.answers);  // constructor function

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}