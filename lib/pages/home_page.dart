import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RestAPI Exercise'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade800,
        foregroundColor: Colors.white,
        shadowColor: Colors.purple,
        elevation: 5,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user['email'];
          return ListTile(
            title: Text(email),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUser,
        backgroundColor: Colors.purple.shade800,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }

  //placebo function
  void fetchUser() async {
    print('User Data Fetched');
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print('Fetched Completed');
  }
}
