import 'package:dhruman/Context/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TextHeading1(String text) {
  return Text(
    text.toUpperCase(),
    style: GoogleFonts.roboto(
      fontSize: 50.0,
      fontWeight: FontWeight.w900,
      color: extralighttheme, // Your custom color
    ),
  );
}

Widget TextHeading2(String text) {
  return Text(
    text.toUpperCase(),
    style: GoogleFonts.roboto(
      fontSize: 30.0,
      fontWeight: FontWeight.w400,
      color: extralighttheme, // Your custom color
    ),
  );
}

Widget TextNormal1(String text) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.w100,
      color: extralighttheme, // Your custom color
    ),
  );
}
