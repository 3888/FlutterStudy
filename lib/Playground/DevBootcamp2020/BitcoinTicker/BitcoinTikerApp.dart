import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BitcoinTicker/screens/price_screen.dart';

class BitcoinTickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
