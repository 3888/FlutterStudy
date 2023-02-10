import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  buildGender(IconData icon, String text) {
    var textStyle = const TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
    var widgetList = [
      Icon(icon, size: 80.0),
      const SizedBox(height: 15.0),
      Text(
        text,
        style: textStyle,
      )
    ];

    return Column(
        mainAxisAlignment: MainAxisAlignment.center, children: widgetList);
  }

  Color selectedColor = Colors.black12;
  Color defaultColor = Colors.black45;
  Gender selectedGender = Gender.notSelected;

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
                Expanded(
                  child: GenderCard(
                    color: selectedGender == Gender.male
                        ? selectedColor
                        : defaultColor,
                    cardChild: buildGender(FontAwesomeIcons.mars, 'MALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    // gender: Gender.male
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    color: selectedGender == Gender.female
                        ? selectedColor
                        : defaultColor,
                    cardChild: buildGender(FontAwesomeIcons.venus, 'FEMALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    // gender: Gender.female
                  ),
                )
              ],
            )),
            const Expanded(child: Card()),
            Expanded(
                child: Row(
              children: const [
                Expanded(child: Card()),
                Expanded(child: Card())
              ],
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
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

enum Gender { male, female, notSelected }

class GenderCard extends StatelessWidget {
  const GenderCard(
      {Key? key, required this.color, this.cardChild, required this.onPress})
      : super(key: key);

  final Color color;
  final Widget? cardChild;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
