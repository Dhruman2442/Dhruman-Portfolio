import 'package:dhruman/Widgets/Custom_Cards.dart';
import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  const ExperienceSection({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        expereinceCard("Skyacres", "XYZ", "projects/flutter.png", context,(){}),
        const SizedBox(
          height: 10,
        ),
        expereinceCard("Rewaa Tech Verge", "XYZ", "projects/flutter.png", context,(){}),
        const SizedBox(
          height: 10,
        ),
        expereinceCard("Hiyaa Infotech", "XYZ", "projects/flutter.png", context,(){}),
        const SizedBox(
          height: 10,
        ),
        expereinceCard("Akash Technolabs", "XYZ", "projects/flutter.png", context,(){}),
      ],
    );
    // Your experience section content
  }
}
