import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget searchScreenAppBarButton(
  String text,
  void Function() onPressed,
  bool boolName,
) {
  return OutlinedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        boolName ? const Color(0xFF365F9E) : Colors.transparent,
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
      ),
      side: MaterialStateProperty.all(
        const BorderSide(
          width: 1.0,
          color: Appcolors.whitish,
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Appcolors.whitish,
        fontSize: 12,
        fontFamily: readexproFontName,
      ),
    ),
  );
}
