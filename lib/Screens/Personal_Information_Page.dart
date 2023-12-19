import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dhruman/Context/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInformationSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  const PersonalInformationSection({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DefaultTextStyle(
              style: GoogleFonts.roboto(
                fontSize: 65.0,
                fontWeight: FontWeight.w900,
                color: extralighttheme, // Your custom color
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText("Bringing visions to life and creating immersive digital experience"),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ))
        ]);
    // Your personal information section content
  }
}
