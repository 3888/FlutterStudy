import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  buildGender(List<Widget> widgetList) =>
      Column(mainAxisAlignment: MainAxisAlignment.center, children: widgetList);

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
              children: [
                Card(
                  cardChild: buildGender([
                    Icon(FontAwesomeIcons.mars, size: 80.0),
                    SizedBox(height: 15.0),
                    Text(
                      'MALE',
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                    )
                  ]),
                ),
                Card(
                    cardChild: buildGender([
                  Icon(FontAwesomeIcons.venus, size: 80.0),
                  SizedBox(height: 15.0),
                  Text(
                    'FEMALE',
                    style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                  )
                ]))
              ],
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
  const Card({Key? key, this.color = Colors.black45, this.cardChild})
      : super(key: key);

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
