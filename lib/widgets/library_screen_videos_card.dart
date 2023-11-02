import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget libraryScreenVideosCard(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(
      left: 18,
      right: 18,
      bottom: 10,
    ),
    padding: const EdgeInsets.only(right: 12),
    decoration: const BoxDecoration(
      color: Color(0xFF1F1F1F),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(
              image: const AssetImage("assets/images/pattern.jpg"),
              height: 115,
              width: MediaQuery.of(context).size.width / 2.6,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: const Text(
                    "Glory be to God",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Appcolors.whitish,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: readexproFontName,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: const Text(
                    "Frank Edwards",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Appcolors.gray,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: readexproFontName,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SvgPicture.asset("assets/icons/delete.svg"),
      ],
    ),
  );
}
