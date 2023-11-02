import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget watchFullVideoRow(String iconName, String label) {
  return Column(
    children: [
      SvgPicture.asset(
        "assets/icons/$iconName.svg",
        width: 22,
      ),
      const SizedBox(
        height: 4
      ),
      Text(
        label,
        style: const TextStyle(
          fontFamily: readexproFontName,
          fontSize: 11,
          color: Color(0xFFD9D9D9),
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
