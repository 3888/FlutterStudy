import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BmiCalc/calculator_brain.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BmiCalc/components/bottom_button.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BmiCalc/screens/results_page.dart';

import '../components/reusable_card.dart';
import '../components/round_icon_button.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  buildGender(IconData icon, String text) {
    List<Widget> widgetList = [
      Icon(icon, size: 80.0),
      const SizedBox(height: 15.0),
      Text(
        text,
        style: kLabelTextStyle,
      )
    ];

    return Column(
        mainAxisAlignment: MainAxisAlignment.center, children: widgetList);
  }

  buildSelection(String text, int value, UserData userData) {
    var widgetList = [
      Text(
        text.toUpperCase(),
        style: kLabelTextStyle,
      ),
      Text(
        value.toString(),
        style: kNumberTextStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: () {
                setState(() {
                  userData == UserData.weight ? weight-- : age--;
                });
              }),
          SizedBox(
            width: 10.0,
          ),
          RoundIconButton(
            icon: FontAwesomeIcons.plus,
            onPress: () {
              setState(() {
                userData == UserData.weight ? weight++ : age++;
              });
            },
          ),
        ],
      ),
    ];

    return Column(
        mainAxisAlignment: MainAxisAlignment.center, children: widgetList);
  }

  UserData selectedGender = UserData.empty;
  int height = 180;
  int weight = 60;
  int age = 20;

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
                    color: selectedGender == UserData.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: buildGender(FontAwesomeIcons.mars, 'MALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = UserData.male;
                      });
                    },
                    // gender: Gender.male
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == UserData.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: buildGender(FontAwesomeIcons.venus, 'FEMALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = UserData.female;
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
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColour,
                      cardChild:
                          buildSelection('Weight', weight, UserData.weight),
                      // gender: Gender.male
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColour,
                      cardChild: buildSelection('Age', age, UserData.age),
                      // gender: Gender.male
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                buttonTitle: 'CALCULATE',
                onTap: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultsPage(
                              interpretation: calc.calculateBMI(),
                              bmiResult: calc.getResult(),
                              resultText: calc.getInterpretation())));
                })
          ],
        ));
  }
}
