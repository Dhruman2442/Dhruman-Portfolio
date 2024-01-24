import 'package:dhruman/Context/Colors.dart';
import 'package:dhruman/Widgets/text.dart';
import 'package:flutter/material.dart';

Widget expereinceCard(String title, String detail, String imageLocation,
    BuildContext context, VoidCallback buttonToProjects) {
  return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.7,
      color: darktheme,
      child: Row(
        children: [
          Image.asset(imageLocation,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1),
          Column(
            children: [TextHeading1(title), TextNormal1(detail)],
          ),
          GestureDetector(
            onTap: buttonToProjects,
            child: CircleAvatar(),
          )
        ],
      ));
}
