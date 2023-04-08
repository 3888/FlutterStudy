import 'dart:convert';

import 'package:fimber/fimber.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:learn_flutter/Playground/FlutterLab/API/logging_interceptor.dart';
import 'package:oktoast/oktoast.dart';

import 'coin_api_interceptor.dart';
import 'exchangerate_model.dart';

const baseUrl = 'https://rest.coinapi.io';

class CoinApiRepository {
  var logger = FimberLog("API_TAG");
  InterceptedClient client = InterceptedClient.build(
      interceptors: [CoinApiInterceptor(), LoggingInterceptor()]);

  Future<ExchangeRateModel> fetchCurrency(
      String basePath, String quotePath) async {
    dynamic parsedResponse;
    try {
      final response = await client
          .get("$baseUrl/v1/exchangerate/$basePath/$quotePath".toUri());
      if (response.statusCode == 200) {
        parsedResponse = json.decode(response.body);
      } else {
        throw Exception("Error while fetching. \n ${response.body}");
      }
    } catch (e) {
      logger.e(e.toString());
      showToast(e.toString());
    }

    return ExchangeRateModel.fromMap(parsedResponse);
  }
}
