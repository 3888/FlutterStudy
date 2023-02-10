import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/Quizler/QuizBrian.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class QuizItem {
  final String question;
  final bool answer;

  QuizItem(
    this.question,
    this.answer,
  );
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain quizBrain = QuizBrain();

  ButtonStyle textButtonStyle(Color background) => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(background),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      );

  TextButton textButton(String text, Color background, bool result) =>
      TextButton(
        style: textButtonStyle(background),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        onPressed: () {
          setState(() {
            clickAction(result);
          });
        },
      );

  List<Icon> scoreKeeper = [];
  int currentIndex = 0;

  clickAction(bool result) {
    Icon icon;
    if (result == quizBrain.getQuizAnswer()) {
      icon = const Icon(Icons.check, color: Colors.green);
    } else {
      icon = const Icon(Icons.close, color: Colors.red);
    }

    setState(() {
      if (scoreKeeper.length == quizBrain.length()) {
        Fluttertoast.showToast(
            msg: "Quiz restarted!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.lightBlueAccent,
            textColor: Colors.white,
            fontSize: 16.0);

        quizBrain.finishQuiz();
        scoreKeeper.clear();

        return;
      } else {
        scoreKeeper.add(icon);
      }

      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuizQuestion(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: textButton('True', Colors.green, true),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: textButton('False', Colors.red, false),
          ),
        ),
        Row(children: scoreKeeper)
      ],
    );
  }
}
