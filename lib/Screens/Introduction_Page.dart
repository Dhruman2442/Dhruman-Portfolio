import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dhruman/Context/Colors.dart';
import 'package:dhruman/Context/Strings.dart';
import 'package:dhruman/Widgets/button.dart';
import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  final VoidCallback navigateToProjectsPage;

  const IntroductionSection({
    super.key,
    required this.scrollToSection,
    required this.navigateToProjectsPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(100),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              homeBackground,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width*0.5,
              opacity: const AlwaysStoppedAnimation(.2),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: TextHeading1("Skyacres Agrotechnology")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Building applications',
                    style: TextStyle(fontSize: 43.0, color: lighttheme),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: extralighttheme,
                      fontSize: 43.0,
                      fontFamily: 'Horizon',
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 100,
                      width: 275,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('RESPONSIVE'),
                          RotateAnimatedText('CONSISTENT'),
                          RotateAnimatedText('SECURE'),
                          RotateAnimatedText('UNIQUE'),
                        ],
                        onTap: () {},
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
