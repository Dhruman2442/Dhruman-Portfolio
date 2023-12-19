import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dhruman/Context/Colors.dart';
import 'package:dhruman/Context/Strings.dart';
import 'package:dhruman/Widgets/button.dart';
import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';
class IntroductionSection extends StatelessWidget {
  final VoidCallback scrollToSection;
  final VoidCallback navigateToProjectsPage;

  IntroductionSection({super.key,
    required this.scrollToSection,
    required this.navigateToProjectsPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 100),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 500),
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              homeBackground,
              height: MediaQuery.of(context).size.height * 0.9,
              opacity: const AlwaysStoppedAnimation(.5),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: TextHeading1("Dhruman Rathod")),
              Row(
                children: <Widget>[
                  const Text(
                    'Building applications',
                    style: TextStyle(fontSize: 43.0),
                  ),
                  SizedBox(width: 20,),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: extralighttheme,
                      fontSize: 43.0,
                      fontFamily: 'Horizon',
                    ),
                    child: Container(
                      height: 100,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('USER-FRIENDLY'),
                          RotateAnimatedText('RESPONSIVE'),
                          RotateAnimatedText('CONSISTENT'),
                          RotateAnimatedText('SECURE'),
                          RotateAnimatedText('UNIQUE'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Button1(navigateToProjectsPage, "See Projects"),
            ],
          ),
        ],
      ),
    );
  }
}

