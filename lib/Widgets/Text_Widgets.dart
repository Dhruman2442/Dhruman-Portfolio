import 'package:flutter/material.dart';

Widget sectionHeaderText(String text) {
  return Text(
    text.toUpperCase(),
    style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.green, // Your custom color
    ),
  );
}
