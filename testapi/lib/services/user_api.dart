import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testapi/models/users.dart';

class UserApi {
 static Future<List<Users>> fetchusers() async {
    
    const api = "https://randomuser.me/api/?results=5";
    final uri = Uri.parse(api);
    final response = await http.get(uri);
    final data = response.body;
    final json = jsonDecode(data);
    final res = json['results'] as List<dynamic>;

    final List<Users> ans = res.map((e) {
      return Users(
        email: e['email'],
      );
    }).toList();
    return ans;
  }
}
