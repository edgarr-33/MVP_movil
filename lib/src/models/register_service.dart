import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> register(String fullname, String email, String password) async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String registerAPI = '/api/register/';
  String host = '192.168.0.7:3000';

  try {
    final response = await http.post(
      Uri.http(host, registerAPI),
      headers: headers,
      body: json.encode(
        {'fullname': fullname, 'email': email, 'password': password},
      ),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}