import 'package:dhruman/Context/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TextHeading1(String text) {
  return Text(
    text.toUpperCase(),
    style: GoogleFonts.acme(
      fontSize: 60.0,
      fontWeight: FontWeight.w900,
      color: extralighttheme, // Your custom color
    ),
  );
}

Widget TextHeading2(String text) {
  return Text(
    text.toUpperCase(),
    style: GoogleFonts.acme(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: extralighttheme, // Your custom color
    ),
  );
}

Widget TextNormal1(String text) {
  return Text(
    text,
    style: GoogleFonts.acme(
      fontSize: 18.0,
      fontWeight: FontWeight.w100,
      color: extralighttheme, // Your custom color
    ),
  );
}
