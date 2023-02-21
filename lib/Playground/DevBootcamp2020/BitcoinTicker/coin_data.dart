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
  AUD("AUD"),
  BRL("BRL"),
  CAD("CAD"),
  CNY("CNY"),
  EUR("EUR"),
  GBP("GBP"),
  HKD("HKD"),
  IDR("IDR"),
  ILS("ILS"),
  INR("INR"),
  JPY("JPY"),
  MXN("MXN"),
  NOK("NOK"),
  NZD("NZD"),
  PLN("PLN"),
  RON("RON"),
  RUB("RUB"),
  SEK("SEK"),
  SGD("SGD"),
  USD("USD"),
  ZAR("ZAR");

  final String value;

  const Currency(this.value);

}

class CoinData {}
