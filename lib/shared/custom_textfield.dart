// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Custom_text_Field extends StatelessWidget {
  const Custom_text_Field({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: extInputTypee,
      obscureText: ispassword,
      decoration: InputDecoration(
        hintText: hinttexttt,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
