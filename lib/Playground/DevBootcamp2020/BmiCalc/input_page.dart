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

  Color cardColor = Colors.black45;
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        print("object male");
                      });
                    },
                    child: GenderCard(
                      selectedGender: selectedGender,
                      gender: Gender.male,
                      cardChild: buildGender(FontAwesomeIcons.mars, 'MALE'),
                      // gender: Gender.male
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        print("object female");
                      });
                    },
                    child: GenderCard(
                      selectedGender: selectedGender,
                      gender: Gender.female,
                      cardChild: buildGender(FontAwesomeIcons.venus, 'FEMALE'),
                      // gender: Gender.female
                    ),
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

enum Gender { male, female, notSelected }

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

class GenderCard extends StatelessWidget {
  const GenderCard(
      {Key? key,
      this.selectedGender = Gender.notSelected,
      required this.gender,
      this.cardChild})
      : super(key: key);

  final Gender selectedGender;
  final Gender gender;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    var color = Colors.black45;

    if (selectedGender == gender) color = Colors.black12;

    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
