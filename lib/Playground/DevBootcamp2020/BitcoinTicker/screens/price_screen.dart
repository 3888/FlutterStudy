import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BitcoinTicker/coin_data.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BitcoinTicker/services/CoinApiRepository.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  var selectedCurrency = "USD";
  String textBTC = "";

  List<DropdownMenuItem<String>> getMenuItems() {
    var menuItems = <DropdownMenuItem<String>>[];
    currenciesList;

    for (String currency in currenciesList) {
      menuItems.add(DropdownMenuItem(child: Text(currency), value: currency));
    }
    return menuItems;
  }

  void getExchangerate() async {
    var responce = await CoinApiRepository().fetchCurrency("BTC", "USD");

    setState(() {
      textBTC = "1 ${responce!.assetIdBase} = ${responce.assetIdQuote}";
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (textBTC.isEmpty) getExchangerate();

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
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: TextButton(
                  onPressed: () {
                    getExchangerate();
                  },
                  child: Text(
                    textBTC,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: selectedCurrency,
              items: getMenuItems(),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
