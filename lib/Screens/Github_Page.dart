import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

class GithubProjectsSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  GithubProjectsSection({required this.scrollToSection});
  @override
  Widget build(BuildContext context) {
    return Container(child: TextHeading1("Github Projects"));
    // Your GitHub projects section content
  }
}