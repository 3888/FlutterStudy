import 'dart:convert';

import 'package:fimber/fimber.dart';
import 'package:http/http.dart' as http;

var logger = FimberLog("TAG_NETWORK");

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      logger.d(response.statusCode.toString());
    }
  }
}
