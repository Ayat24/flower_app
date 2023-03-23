// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

import '../shared/custom_textfield.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 64,
              ),
              Custom_text_Field(),
              const SizedBox(
                height: 64,
              ),
              Custom_text_Field(),
            ],
          ),
        ),
      ),
    );
  }
}
