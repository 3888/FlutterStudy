import 'quiz_page.dart';

class QuizBrain {
  final List<QuizItem> _questions = [
    QuizItem("question1", true),
    QuizItem("question2", false),
    QuizItem("question3", false),
    QuizItem("question4", true)
  ];

  var _position = 0;

  nextQuestion() {
    if (_position < _questions.length - 1) {
      _position++;
    }
  }

  finishQuiz() => _position = 0;

  getQuizQuestion() {
    return _questions[_position].question;
  }

  getQuizAnswer() => _questions[_position].answer;

  int length() => _questions.length;
}
