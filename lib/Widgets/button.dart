import 'package:dhruman/Context/Colors.dart';
import 'package:flutter/material.dart';
Widget Button1(VoidCallback scroll, String textinput) {
  return ElevatedButton(
    onPressed: () {
      scroll();  // Call the function by adding parentheses
    },
    child: Text(textinput),
    style: ElevatedButton.styleFrom(
      backgroundColor: extralighttheme,
      foregroundColor: extradarktheme,
    ),
  );
}

