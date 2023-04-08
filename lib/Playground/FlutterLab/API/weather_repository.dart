import 'dart:convert';

import 'package:fimber/fimber.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:learn_flutter/Playground/FlutterLab/API/logging_interceptor.dart';

import 'weather_api_interceptor.dart';

const baseUrl = 'https://api.openweathermap.org/data/2.5';
const apiKey = 'a88c60cf943d3e22aa28cadb6ece37b0';
var logger = FimberLog("TAG_WEATHER");

class WeatherRepository {
  InterceptedClient client = InterceptedClient.build(
      interceptors: [WeatherApiInterceptor(), LoggingInterceptor()]);

  Future<Map<String, dynamic>> fetchCityWeather(String city) async {
    dynamic parsedWeather;
    try {
      final response =
          await client.get("$baseUrl/weather".toUri(), params: {'q': city});
      if (response.statusCode == 200) {
        parsedWeather = json.decode(response.body);
      } else {
        throw Exception("Error while fetching. \n ${response.body}");
      }
    } catch (e) {
      logger.e(e.toString());
    }
    return parsedWeather;
  }
}
