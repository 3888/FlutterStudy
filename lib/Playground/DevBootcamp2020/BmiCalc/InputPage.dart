import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender() => Expanded(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(10.0)),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: const [Card(), Card()],
            )),
            const Expanded(child: Card()),
            Expanded(
                child: Row(
              children: const [Card(), Card()],
            )),
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 80.0,
              margin: const EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}

class Card extends StatelessWidget {
  const Card({Key? key, this.color = Colors.black45, this.cardChild}) : super(key: key);

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
