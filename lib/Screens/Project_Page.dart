import 'package:carousel_slider/carousel_slider.dart';
import 'package:dhruman/Widgets/Custom_Cards.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  List<Widget> carouselItems = [
    projectCard("", "projectName", "projectDetail"),
    projectCard("", "projectName", "projectDetail"),
    projectCard("", "projectName", "projectDetail"),
    projectCard("", "projectName", "projectDetail")
  ];
  final VoidCallback scrollToSection;

  ProjectsSection({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Other widgets
        CarouselSlider(
          items: carouselItems,
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.2,
            // Customize the height of the carousel
            autoPlay: true,
            // Enable auto-play
            enlargeCenterPage: true,
            // Increase the size of the center item
            enableInfiniteScroll: true,
            // Enable infinite scroll
            onPageChanged: (index, reason) {
              // Optional callback when the page changes
              // You can use it to update any additional UI components
            },
          ),
        ),
        // Other widgets
      ],
    );
    // Your projects section content
  }
}
