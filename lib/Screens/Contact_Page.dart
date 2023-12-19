import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

class ContactFormSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  ContactFormSection({required this.scrollToSection});
  @override
  Widget build(BuildContext context) {
    return Container(child: TextHeading1("Contact Form"));
    // Your contact form section content
  }
}