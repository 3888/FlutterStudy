import 'package:flutter/material.dart';

enum Gender { male, female, notSelected }

class ReusableCard extends StatelessWidget {
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

  const ReusableCard(
      {Key? key, required this.color, this.cardChild, this.onPress})
      : super(key: key);

  final Color color;
  final Widget? cardChild;
  final void Function()? onPress;

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
