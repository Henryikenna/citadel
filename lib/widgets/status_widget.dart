import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget statusWidget({
  required ImageProvider profilePicture,
  required String userName,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 7.0),
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFF35BC52),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            CircleAvatar(
              radius: 28,
              backgroundImage: profilePicture,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 55,
          child: Text(
            userName,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontFamily: readexproFontName,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    ),
  );
}
