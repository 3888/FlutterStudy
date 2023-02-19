import 'dart:convert';

import 'package:http_interceptor/http_interceptor.dart';
import 'package:learn_flutter/Playground/FlutterLab/API/LoggingInterceptor.dart';

import 'WeatherApiInterceptor.dart';

const baseUrl = 'https://api.openweathermap.org/data/2.5/';
const apiKey = 'a88c60cf943d3e22aa28cadb6ece37b0';

class WeatherRepository {
  InterceptedClient client = InterceptedClient.build(interceptors: [
    WeatherApiInterceptor(),
    LoggingInterceptor()
  ]);

  Future<Map<String, dynamic>> fetchCityWeather(String city) async {
    var parsedWeather;
    try {
      final response =
          await client.get("$baseUrl/weather".toUri(), params: {'q': city});
      if (response.statusCode == 200) {
        parsedWeather = json.decode(response.body);
      } else {
        throw Exception("Error while fetching. \n ${response.body}");
      }
    } catch (e) {
      print(e);
    }
    return parsedWeather;
  }
}