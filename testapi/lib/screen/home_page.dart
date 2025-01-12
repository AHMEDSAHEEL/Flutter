import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testapi/models/users.dart';
import 'package:testapi/services/user_api.dart';

//flutter run -d chrome --web-renderer html // for image object progressEvent error

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Users> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter demo Api'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
            //  print("Clicked Id: ${index + 1}");
              final user = users[index];
              final email = user.email;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){ print("Clicked Id: ${index + 1}");},
                  child: ListTile(
                    leading: ClipRRect(
                      
                      borderRadius: BorderRadius.circular(100),
                      //child: Image.network(user.picture.thumbnail),
                      child:Text("${index+1}"),
                    ),
                    title: Text(
                      user.fullName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(email),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Future<void> fetchApi() async {
    final List<Users> res = await UserApi.fetchusers();
    setState(() {
      users = res;
    });
  }
}
