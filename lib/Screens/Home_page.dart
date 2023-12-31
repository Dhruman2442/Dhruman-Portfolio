import 'package:dhruman/Context/Colors.dart';
import 'package:dhruman/Screens/Contact_Page.dart';
import 'package:dhruman/Screens/Expereince_Page.dart';
import 'package:dhruman/Screens/Github_Page.dart';
import 'package:dhruman/Screens/Introduction_Page.dart';
import 'package:dhruman/Screens/Personal_Information_Page.dart';
import 'package:dhruman/Screens/Project_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: extradarktheme,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            IntroductionSection(
              scrollToSection: () => _scrollToSection(1),
              navigateToProjectsPage: () =>
                  _scrollToSection(4), // 4 corresponds to the Projects page
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child: PersonalInformationSection(
                  scrollToSection: () => _scrollToSection(2)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child:
                  ExperienceSection(scrollToSection: () => _scrollToSection(3)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child:
                  ProjectsSection(scrollToSection: () => _scrollToSection(4)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child: GithubProjectsSection(
                  scrollToSection: () => _scrollToSection(5)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child: ContactFormSection(
                  scrollToSection: () => _scrollToSection(6)),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: extralighttheme,
            foregroundColor: extradarktheme,
            onPressed: () => _scrollToSection(0),
            child: const Icon(Icons.arrow_upward),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: extralighttheme,
            foregroundColor: extradarktheme,
            onPressed: () => _scrollToSection(1),
            child: const Text('1'),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: extralighttheme,
            foregroundColor: extradarktheme,
            onPressed: () => _scrollToSection(2),
            child: const Text('2'),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: extralighttheme,
            foregroundColor: extradarktheme,
            onPressed: () => _scrollToSection(3),
            child: const Text('3'),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: extralighttheme,
            foregroundColor: extradarktheme,
            onPressed: () => _scrollToSection(4),
            child: const Text('4'),
          ),
          // Add buttons for other sections as needed
        ],
      ),
    );
  }
}
// WaveAnimation(
// size: 300,
// color: extralighttheme,
// centerChild: CircleAvatar(
// radius: 200,
// backgroundImage: AssetImage(homeBackground),
// ),
// ),
