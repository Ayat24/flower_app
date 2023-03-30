import 'package:flutter/material.dart';
import 'package:flutter_appl/pages/details_screen.dart';
import 'package:flutter_appl/pages/home.dart';
import 'package:flutter_appl/pages/login.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Details(
          product: Item(price: 12.99, imgPath: "assets/img/2.webp"),
        ),
      ),
    );
  }
}
