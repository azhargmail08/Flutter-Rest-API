import 'dart:convert';
import 'package:rest_api_my_take/model/user.dart';
import 'package:http/http.dart' as http;

class UserAPI {
  static Future<List<User>> fetchUser() async {
    const url = 'https://randomuser.me/api/?results=20';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((e) {
      return User.fromMap(e);
    }).toList();
    return users;
  }
}
