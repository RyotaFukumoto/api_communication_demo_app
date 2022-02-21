import 'dart:convert';

import 'package:http/http.dart' as http;

class SunriseSunsetClient {
  static sunriseSunsetArticle() async {
    const String url = 'https://labs.bitmeister.jp/ohakon/json/?mode=sun_moon_rise_set&year=2022&month=2&day=19&lat=35.8554&lng=139.6512';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final Map<String,dynamic> jsonArray = json.decode(response.body);
      print(jsonArray);
    } else {
      throw Exception('Failed to load article');
    }
  }
}