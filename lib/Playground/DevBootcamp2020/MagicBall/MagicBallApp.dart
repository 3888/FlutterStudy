import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/MagicBall/BallPage.dart';

class MagicBallApp extends StatelessWidget {
  const MagicBallApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BallPage()
    );
  }
}