import 'package:flutter/material.dart';
import 'package:rest_api_my_take/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RestAPI Exercise',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
