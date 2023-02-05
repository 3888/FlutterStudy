import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender() => Expanded(
        child: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(10.0)),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [Card(), Card()],
            )),
            Expanded(child: Card()),
            Expanded(
                child: Row(
              children: [Card(), Card()],
            )),
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 80.0,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}

class Card extends StatelessWidget {
  Card({this.color = Colors.black45});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
