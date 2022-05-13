import 'dart:convert';

import 'package:carros/pages/user.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<User> login(String login, String senha) async {
    var url = Uri.parse('https://carros-springboot.herokuapp.com/api/v2/login');

    Map<String, String> headers = {
      "Content-Type": "application/json",
    };

    Map params = {
      "username": login,
      "password": senha,
    };

    String s = json.encode(params);

    var response = await http.post(url, body: s, headers: headers);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    final user = User(json.decode(response.body));

    return user;
  }
}
