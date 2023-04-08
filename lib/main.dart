import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

import 'Playground/DevBootcamp2020/TodoApp/todo_app.dart';

void main() {
  Fimber.plantTree(DebugTree());
  runApp(
      // const SimpleCounter()
      // const ImageFromWebOrAssets()
      // const ContainerExample()
      // const ColumnExample()
      //   const RowExample()
      //   miCard()
      // DiceApp()
      //  MagicBallApp()
      // xylophoneApp()
      // Quizzler()
      // DestiniApp()
      //  BMICalculator()
      // ClimaApp())
      // BitcoinTickerApp()
      // FlashChat()
      TodoApp()
  );
}
