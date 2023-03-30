import 'package:flutter/material.dart';
import 'package:flutter_appl/pages/details_screen.dart';
import 'package:flutter_appl/pages/home.dart';
import 'package:flutter_appl/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
