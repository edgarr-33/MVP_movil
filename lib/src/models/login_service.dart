import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> login(String email, String password) async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String loginAPI = '/api/login/';
  String host = '192.168.0.7:3000';

  try {
    final response = await http.post(
      Uri.http(host, loginAPI),
      headers: headers,
      body: json.encode(
        {'email': email, 'password': password},
      ),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      Map<String, dynamic> responseMap = {
        'status': data['status'],
        'token': data['token']
      };
      return responseMap;
    } else {
      return {
        'status' : 'Error'
      };
    }
  } catch (e) {
    return {'status': 'Error al conectarse con el servidor'};
  }
}