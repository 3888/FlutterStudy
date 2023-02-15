import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/Clima/screens/loading_screen.dart';


class ClimaApp extends StatelessWidget {
  const ClimaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
