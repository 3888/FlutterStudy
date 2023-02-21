class ExchangerateModel {
  late String time;
  late String assetIdBase;
  late String assetIdQuote;
  late double rate;

  static ExchangerateModel fromMap(Map<String, dynamic> map) {
    if (map == null) return throw Exception("Response is null");
    ExchangerateModel responseBean = ExchangerateModel();
    responseBean.time = map['time'];
    responseBean.assetIdBase = map['asset_id_base'];
    responseBean.assetIdQuote = map['asset_id_quote'];
    responseBean.rate = map['rate'];
    return responseBean;
  }

  Map toJson() => {
        "time": time,
        "asset_id_base": assetIdBase,
        "asset_id_quote": assetIdQuote,
        "rate": rate,
      };
}
