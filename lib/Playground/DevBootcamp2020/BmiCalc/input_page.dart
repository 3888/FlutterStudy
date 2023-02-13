import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/reusable_card.dart';
import 'constants.dart';

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

  buildSelection(String text) {
    var textStyle = const TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
    var widgetList = [
      const SizedBox(height: 15.0),
      Text(
        text,
        style: textStyle,
      )
    ];

    return Column(
        mainAxisAlignment: MainAxisAlignment.center, children: widgetList);
  }

  Gender selectedGender = Gender.notSelected;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
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
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: buildGender(FontAwesomeIcons.venus, 'FEMALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                )
              ],
            )),
            Expanded(
                child: ReusableCard(
              color: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColour,
                cardChild: buildSelection('AGE'),
                // gender: Gender.male
              ),
            ),
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
