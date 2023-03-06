import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BitcoinTicker/coin_app_constants.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BitcoinTicker/services/coin_data.dart';

import '../../services/CoinApiRepository.dart';
import 'reusable_coin_card.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String textBTC = "";
  String textETC = "";
  String textLTC = "";

  List<DropdownMenuItem<String>> getMenuItems() {
    var menuItems = <DropdownMenuItem<String>>[];
    currenciesList;

    for (String currency in currenciesList) {
      var item = DropdownMenuItem(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(style: kDropDownTextStyle, currency),
          ),
          value: currency);

      menuItems.add(item);
    }
    return menuItems;
  }

  getExchangeRate(Crypto basePath, String quotePath) async {
    var response =
    await CoinApiRepository().fetchCurrency(basePath.value, quotePath);

    setState(() {
      String text =
      "Fake data $basePath $quotePath";
      // "1 ${response.assetIdBase} = ${response.rate.round()} ${response.assetIdQuote}";
      switch (basePath) {
        case Crypto.btc:
          textBTC = text;
          break;
        case Crypto.etc:
          textETC = text;
          break;
        case Crypto.ltc:
          textLTC = text;
          break;
      }
    });
  }

  @override
  void initState() {
    for (Crypto item in Crypto.values) {
      getExchangeRate(item, Currency.USD.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              children: [
                ReusableCoinCard(text: textBTC),
                SizedBox(height: 30),
                ReusableCoinCard(text: textETC),
                SizedBox(height: 30),
                ReusableCoinCard(text: textLTC),
              ],
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.lightBlueAccent,
              ),
              child: DropdownButton<String>(
                value: Currency.USD.value,
                items: getMenuItems(),
                onChanged: (value) {
                  if (value != null && value.isNotEmpty) {
                    for (Crypto item in Crypto.values) {
                      getExchangeRate(item, value);
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
