import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper {
  static const baseUrl = "our base API url";

  //
  //! get api method
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse("$baseUrl/endpont"));
    return handleResponse(response);
  }

  //
  //! post api method
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'}, body: json.encode(data));
    return handleResponse(response);
  }

  //
  //! put api method
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse("$baseUrl/$endpoint"),
        headers: {"Content-Type": "application/json"}, body: json.encode(data));
    return handleResponse(response);
  }

  //
  //! handle response
  static Map<String, dynamic> handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data : ${response.statusCode}');
    }
  }
}
