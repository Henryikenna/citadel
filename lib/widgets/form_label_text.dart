import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget formLabel(String text) {
  return Container(
    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.only(bottom: 5),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: readexproFontName,
      ),
    ),
  );
}