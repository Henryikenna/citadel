import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget searchScreenAppBar(
  TextEditingController searchController,
) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 70,
      left: 22,
      right: 22,
    ),
    child: TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      controller: searchController,
      cursorColor: const Color(0xFFDEDEDE),
      style: const TextStyle(
        color: Color(0xFFDEDEDE),
        fontSize: 12,
        fontFamily: readexproFontName,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF1F1F1F),
        hintText: "Search",
        hintStyle: const TextStyle(
          color: Color(0xFFDEDEDE),
          fontSize: 12,
          fontFamily: readexproFontName,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: const EdgeInsets.only(
          left: 30,
          right: 15,
          top: 22,
          bottom: 22,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: searchController.text.isEmpty
            ? const SizedBox(
                width: 0,
                height: 0,
              )
            : IconButton(
                onPressed: () {
                  searchController.clear();
                },
                icon: SvgPicture.asset("assets/icons/close.svg"),
              ),
      ),
    ),
  );
}
