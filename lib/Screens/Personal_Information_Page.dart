import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

class PersonalInformationSection extends StatelessWidget {
  final VoidCallback scrollToSection;

  const PersonalInformationSection({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextHeading1("Bringing visions to life and"),
          TextHeading1("creating immersive digital"),
          TextHeading1("experience"),
          SizedBox(
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Photo
                  Container(
                    alignment: Alignment.bottomLeft,
                    // Adjust the distance from the bottom
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: TextHeading2(
                        'Dhruman Rathod',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: 300,
                    child: Stack(
                      children: [
                        Image.asset(
                          'photos/profile.png',
                          width: 400,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                // Fully transparent at the top
                                Colors.black.withOpacity(0.6),
                                // Opacity to make it darker
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Vertical Name
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 400,
                    child: TextNormal1("I am an experience Mobile Application Developer sepcialized in developing User Interfaces, Mobile Apps, Web Apps, IoT services. \nMy goal is to develop Applications and Digital Interfacesthat are not only aesthetically pleasing but also provide a seamless and engagic user experience.\nWith an extensive background in design and a passion for understanding user needs,I create customized designed and graphical user interfaces that effectively communicatethe desired message while optimizing usability"),
                  )
                ],
              ))
        ]);
    // Your personal information section content
  }
}
