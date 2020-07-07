import 'question.dart';

class QuizLogic {

  int _questionNumber = 0;

  List<Question> _questions = [
    Question('Tunis is the capital of Tunisia', true),
    Question('Star Wars saga was realised in Tataouine', true),
    Question('French is the official language of Tunisia', false),
    Question('El Jem\'s festival is for classic musique', true),
    Question('The first Tunisian woman doctor was Tawhida Ben Chikh', true),
    Question('Tunisia\'s independance year was in 1957', false),
    Question('Jugurtha\'s table is near Kalaat Senane ', true),
    Question('Tunisia is in south africa', false),
    Question('Tamazret is a southern tunisian village', true),
   
  ];

  String getQuestion() {
    return _questions[_questionNumber].questionString;
  }

  bool isFinshed() {
    if (_questionNumber >= _questions.length - 1 ) {
      return true;
    } else {
      return false;
    }
  }

  int printQuestionNumber() {
    print(_questionNumber);
  }

  int printQuestionsLength() {
    print(_questions.length);
  }

  void reset() {
    _questionNumber = 0;
  }

  bool getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

}