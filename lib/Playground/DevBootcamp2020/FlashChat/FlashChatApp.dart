import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/screens/welcome_screen.dart';

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
