import 'package:fimber/fimber.dart';

var logger = FimberLog("TAG_CHAT");

class ExchangeRateModel {
  late String time;
  late String assetIdBase;
  late String assetIdQuote;
  late double rate;

  static ExchangeRateModel fromMap(Map<String, dynamic> map) {
    ExchangeRateModel responseBean = ExchangeRateModel();
    try {
      responseBean.time = map['time'];
      responseBean.assetIdBase = map['asset_id_base'];
      responseBean.assetIdQuote = map['asset_id_quote'];
      responseBean.rate = map['rate'];
    } catch (e) {
      logger.e(e.toString());
      // throw Exception("Response is null");
    }

    return responseBean;
  }

  Map toJson() => {
        "time": time,
        "asset_id_base": assetIdBase,
        "asset_id_quote": assetIdQuote,
        "rate": rate,
      };
}
