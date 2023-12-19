
import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  ProjectsSection({required this.scrollToSection});
  @override
  Widget build(BuildContext context) {
    return Container(child: TextHeading1("Projects"));
    // Your projects section content
  }
}
