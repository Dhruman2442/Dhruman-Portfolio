import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  ExperienceSection({required this.scrollToSection});
  @override
  Widget build(BuildContext context) {
    return Container(child: TextHeading1("Experience"));
    // Your experience section content
  }
}

