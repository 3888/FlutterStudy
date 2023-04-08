import 'package:fimber/fimber.dart';
import 'package:http_interceptor/http_interceptor.dart';

var logger = FimberLog("TAG_NETWORK");

class WeatherApiInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    try {
      data.params['appid'] = 'a88c60cf943d3e22aa28cadb6ece37b0';
      data.params['units'] = 'metric';
      data.headers["Content-Type"] = "application/json";
    } catch (e) {
      logger.e(e.toString());
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async =>
      data;
}
