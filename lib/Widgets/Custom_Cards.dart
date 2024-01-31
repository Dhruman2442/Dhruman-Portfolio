import 'package:dhruman/Context/Colors.dart';
import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

Widget expereinceCard(String title, String detail, String imageLocation,
    BuildContext context, VoidCallback buttonToProjects) {
  return GestureDetector(
    onTap: buttonToProjects,
    child: Container(
      decoration: BoxDecoration(
          color: darktheme, borderRadius: BorderRadius.circular(20)),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Image.asset(imageLocation,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [TextHeading2(title), TextNormal1(detail)],
          ),
        ],
      ),
    ),
  );
}

Widget projectCard(
    String projectImage, String projectName, String projectDetail) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: darktheme),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(projectImage),
            Column(
              children: [TextHeading2(projectName), TextNormal1(projectDetail)],
            )
          ],
        ),
      ));
}
