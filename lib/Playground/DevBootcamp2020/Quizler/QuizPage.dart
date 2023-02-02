import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
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
          print("Button click");
          setState(() {
            clickAction(result);
          });
        },
      );

  List<Icon> scoreKeeper = [];

  clickAction(bool result) {
    Icon icon;
    if (result) {
      icon = Icon(Icons.check, color: Colors.green);
    } else {
      icon = Icon(Icons.close, color: Colors.red);
    }
    setState(() {
      scoreKeeper.add(icon);
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
