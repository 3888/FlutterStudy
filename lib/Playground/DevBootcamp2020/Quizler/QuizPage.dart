import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

ButtonStyle textButtonStyle(Color background) => ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(background),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    );

TextButton textButton(
        BuildContext context, String text, Color background, bool result) =>
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
        clickAction(context, result);
      },
    );

void clickAction(BuildContext context, bool result) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: Duration(milliseconds: 300),
    content: Text("Result $result"),
  ));
}

class _QuizPageState extends State<QuizPage> {
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
            child: textButton(context, 'True', Colors.green, true),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: textButton(context, 'False', Colors.red, false),
          ),
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}
