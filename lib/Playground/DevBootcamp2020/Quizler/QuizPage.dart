import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

ButtonStyle textButtonStyle(Color background) => ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(background),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    );

TextButton textButton(String text, Color background, Function(bool) f) =>
    TextButton(
      style: textButtonStyle(background),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      onPressed: () {},
    );

class _QuizPageState extends State<QuizPage> {
  clickAction(bool result) {
    scoreKeeper.add(
        Icon(Icons.check, color: result == true ? Colors.red : Colors.green));
  }

  List<Icon> scoreKeeper = [];

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
                'This is where the question text will go.',
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
            child: textButton('True', Colors.green, clickAction(true)),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: textButton('False', Colors.red, clickAction(false)),
          ),
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}
