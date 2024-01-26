import 'package:dhruman/Widgets/Custom_Cards.dart';
import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  const ExperienceSection({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        expereinceCard("Skyacres (June 2023 - Current)",
            "R&D Software Engineer", "projects/flutter.png", context, () {}),
        const SizedBox(
          height: 10,
        ),
        expereinceCard(
            "Rewaa Tech Verge (Jan 2022 - Aug 2022)",
            "Mobile Application Developer",
            "projects/flutter.png",
            context,
            () {}),
        const SizedBox(
          height: 10,
        ),
        expereinceCard("Hiyaa Infotech(May 2021 - Dec 2021)",
            "Android Developer", "projects/flutter.png", context, () {}),
        const SizedBox(
          height: 10,
        ),
        expereinceCard("Akash Technolabs", "Internship", "projects/flutter.png",
            context, () {}),
      ],
    );
    // Your experience section content
  }
}
