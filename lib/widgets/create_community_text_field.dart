import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget createCommunityTextField({
  required int maxLines,
  required int maxLength,
  required String hintText,
}) {
  return TextField(
    maxLines: maxLines,
    maxLength: maxLength,
    onTapOutside: (event) {
      FocusManager.instance.primaryFocus?.unfocus();
    },
    cursorColor: Colors.white,
    style: const TextStyle(
      color: Color(0xFFF5F5F5),
      fontFamily: readexproFontName,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    decoration: InputDecoration(
      counterStyle: const TextStyle(color: Appcolors.whitish),
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Color(0xFFF5F5F5),
        fontFamily: readexproFontName,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Appcolors.purpleish,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(1),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Appcolors.purpleish,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(1),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(1),
        ),
      ),
    ),
  );
}
