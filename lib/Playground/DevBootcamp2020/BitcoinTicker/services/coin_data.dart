const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

enum Crypto {
  btc("BTC"),
  etc("ETH"),
  ltc("LTC");

  final String value;

  const Crypto(this.value);
}

enum Currency {
  aud("AUD"),
  brl("BRL"),
  cad("CAD"),
  cny("CNY"),
  eur("EUR"),
  gbp("GBP"),
  hkd("HKD"),
  idr("IDR"),
  ils("ILS"),
  inr("INR"),
  jpy("JPY"),
  mxn("MXN"),
  nok("NOK"),
  nzd("NZD"),
  pln("PLN"),
  ron("RON"),
  rub("RUB"),
  sek("SEK"),
  sgd("SGD"),
  usd("USD"),
  zar("ZAR");

  final String value;

  const Currency(this.value);
}

class CoinData {}
