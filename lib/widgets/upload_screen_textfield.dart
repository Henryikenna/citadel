import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget uploadScreenTextField(
    {required String hintText, required TextEditingController controller}) {
  return TextField(
    onTapOutside: (event) {
      FocusManager.instance.primaryFocus?.unfocus();
    },
    style: const TextStyle(
      color: Appcolors.secondGray,
      fontFamily: readexproFontName,
      fontSize: 12,
    ),
    controller: controller,
    cursorColor: Appcolors.secondGray,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 15,
      ),
      fillColor: const Color(0xFF202020),
      filled: true,
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Appcolors.secondGray,
        fontFamily: readexproFontName,
        fontSize: 12,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
  );
}
