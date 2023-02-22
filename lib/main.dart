import 'package:flutter/material.dart';
import 'package:fimber/fimber.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/FlashChat/FlashChatApp.dart';

import 'Playground/DevBootcamp2020/BitcoinTicker/BitcoinTikerApp.dart';
import 'Playground/DevBootcamp2020/Xylophone/xylophone_app.dart';

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
      FlashChat());
}
