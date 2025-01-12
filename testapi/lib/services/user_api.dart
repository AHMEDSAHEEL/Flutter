import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testapi/models/users.dart';

class UserApi {
 static Future<List<Users>> fetchusers() async {
    
    const api = "https://randomuser.me/api/?results=50";
    final uri = Uri.parse(api);
    final response = await http.get(uri);
    final data = response.body;
    final json = jsonDecode(data);
    final res = json['results'] as List<dynamic>;

    final List<Users> ans = res.map((e) {
         
         final name=Name(
          title:e['name']['title'],
          first: e['name']['first'],
          last:e['name']['last'],
         );
         final picture=Picture(
          large:e['picture']['large'],
          medium: e['picture']['medium'],
          thumbnail:e['picture']['thumbnail'],
         );
      return Users(
        email: e['email'],
        name: name,
        picture:picture,
      );
    }).toList();
    return ans;
  }
}
