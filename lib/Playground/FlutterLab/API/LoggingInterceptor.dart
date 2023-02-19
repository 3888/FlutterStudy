import 'package:fimber/fimber.dart';
import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  var logger = FimberLog("API_TAG");

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    logger.d(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    logger.d(data.toString());
    return data;
  }
}
