import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testapi/models/users.dart';
import 'package:testapi/services/user_api.dart';

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
              final user = users[index];
              final email = user.email;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(email),
                ),
              );
            }),
      ),
    );
  }

 Future<void> fetchApi() async {
    final List<Users> res =await UserApi.fetchusers();
    setState(() {
      users = res;
    });
  }
}
