import 'package:citadel/utils/font.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget uploadMediaContainer(String iconLink, String label) {
  return DottedBorder(
    color: const Color(0xFF9E9E9E),
    dashPattern: const [8, 4],
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconLink),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF9E9E9E),
                fontFamily: readexproFontName,
                fontSize: 13,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
