import 'package:dhruman/Screens/Contact_Page.dart';
import 'package:dhruman/Screens/Experience_Page.dart';
import 'package:dhruman/Screens/Github_Page.dart';
import 'package:dhruman/Screens/Introduction_Page.dart';
import 'package:dhruman/Screens/Personal_Information_Page.dart';
import 'package:dhruman/Screens/Project_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Context/Colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(int sectionIndex) {
    _scrollController.animateTo(
      sectionIndex * MediaQuery.of(context).size.height,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget buildNavigationButton(String label, int sectionIndex) {
    return TextButton(
      style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
          foregroundColor: lighttheme),
      onPressed: () => _scrollToSection(sectionIndex),
      child: Text(
        label,
        style: GoogleFonts.roboto(fontSize: 16),
      ),
    );
  }

  Widget buildSizedBoxForSection(Widget child) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.95,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: extradarktheme,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildNavigationButton('INTRODUCTION', 1),
                        buildNavigationButton('EXPERIENCE', 2),
                        buildNavigationButton('PROJECTS', 3),
                        buildNavigationButton('GITHUB', 4),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                ],
              ),
            ),
            buildSizedBoxForSection(IntroductionSection(
              scrollToSection: () => _scrollToSection(1),
              navigateToProjectsPage: () => _scrollToSection(4),
            )),
            buildSizedBoxForSection(PersonalInformationSection(
              scrollToSection: () => _scrollToSection(2),
            )),
            buildSizedBoxForSection(ExperienceSection(
              scrollToSection: () => _scrollToSection(3),
            )),
            buildSizedBoxForSection(ProjectsSection(
              scrollToSection: () => _scrollToSection(4),
            )),
            buildSizedBoxForSection(GithubProjectsSection(
              scrollToSection: () => _scrollToSection(5),
            )),
            buildSizedBoxForSection(ContactFormSection(
              scrollToSection: () => _scrollToSection(6),
            )),
          ],
        ),
      ),
    );
  }
}
