import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget notificationCard(Color bgColor) {
  return Container(
    width: double.infinity,
    height: 73,
    margin: const EdgeInsets.only(
      left: 17,
      right: 17,
      bottom: 2,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Subscriber",
              style: TextStyle(
                color: Appcolors.whitish,
                fontFamily: readexproFontName,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Jose maria, you have 1 new Subscriber",
              style: TextStyle(
                color: Appcolors.whitish,
                fontFamily: readexproFontName,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          child: Image(
            image: AssetImage("assets/images/mockpfp.jpg"),
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}
