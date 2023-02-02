import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
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
  ButtonStyle textButtonStyle(Color background) => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(background),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      );

  TextButton textButton(String text, Color background, bool result) =>
      TextButton(
        style: textButtonStyle(background),
        child: Text(
          text,
          style: TextStyle(
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
    if (result == questions[currentIndex].answer) {
      icon = Icon(Icons.check, color: Colors.green);
    } else {
      icon = Icon(Icons.close, color: Colors.red);
    }

    setState(() {
      if (scoreKeeper.length == questions.length) {
        return;
      } else {
        scoreKeeper.add(icon);
      }
      ;

      if (currentIndex < questions.length - 1) {
        currentIndex++;
      }
    });
  }

  List<QuizItem> questions = [
    QuizItem("question1", true),
    QuizItem("question2", false),
    QuizItem("question3", false),
    QuizItem("question4", true)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[currentIndex].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: textButton('True', Colors.green, true),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: textButton('False', Colors.red, false),
          ),
        ),
        Row(children: scoreKeeper)
      ],
    );
  }
}
