import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget addStatusWidget() {
  return Padding(
    padding: const EdgeInsets.only(right: 7.0),
    child: Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1F1F),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SvgPicture.asset(
                "assets/icons/plus.svg",
                width: 30,
                height: 30,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Add Status",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: readexproFontName,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
