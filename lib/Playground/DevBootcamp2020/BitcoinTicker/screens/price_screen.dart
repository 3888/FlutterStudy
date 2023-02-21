import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/BitcoinTicker/coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String textBTC = "textBTC";
  String textETC = "textETC";
  String textLTC = "textLTC";

  List<DropdownMenuItem<String>> getMenuItems() {
    var menuItems = <DropdownMenuItem<String>>[];
    currenciesList;

    for (String currency in currenciesList) {
      menuItems.add(DropdownMenuItem(child: Text(currency), value: currency));
    }
    return menuItems;
  }

  getExchangeRate(Crypto basePath, Currency quotePath) async {
    // var response = await CoinApiRepository()
    //     .fetchCurrency(basePath.value, quotePath.value);

    setState(() {
      String text = "$basePath $quotePath";
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
  Widget build(BuildContext context) {
    // if (textBTC.isEmpty)
    getExchangeRate(Crypto.btc, Currency.EUR);

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
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
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
                SizedBox(height: 30),
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      textETC,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      textLTC,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: Currency.USD.value,
              items: getMenuItems(),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
