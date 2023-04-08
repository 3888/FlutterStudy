import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BitcoinTicker/screens/exchange_rates/price_screen.dart';
import 'package:oktoast/oktoast.dart';

import 'miui10_anim.dart';

class BitcoinTickerApp extends StatelessWidget {
  const BitcoinTickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
        textStyle: const TextStyle(fontSize: 19.0, color: Colors.white),
        backgroundColor: Colors.grey,
        animationCurve: Curves.easeIn,
        animationBuilder: const Miui10AnimBuilder(),
        animationDuration: const Duration(milliseconds: 200),
        duration: const Duration(seconds: 3),
        child: MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    ));
  }
}
