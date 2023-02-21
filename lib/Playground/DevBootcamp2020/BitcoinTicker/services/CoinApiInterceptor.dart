import 'package:fimber/fimber.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:oktoast/oktoast.dart';

const apiKey = '458DC4D3-BB86-4409-BBE9-87A4F0023C3C';

class CoinApiInterceptor implements InterceptorContract {
  var logger = FimberLog("API_TAG");

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    try {
      data.headers["X-CoinAPI-Key"] = apiKey;
    } catch (e) {
      logger.e(e.toString());
      showToast(e.toString());
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async =>
      data;
}
