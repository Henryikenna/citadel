import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget libraryScreenSongCard(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(
      top: 7,
      left: 10,
      right: 25,
      bottom: 7,
    ),
    margin: const EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
      color: const Color(0xFF1F1F1F),
      borderRadius: BorderRadius.circular(1),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Image(
              image: AssetImage("assets/images/mockimg.jpg"),
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: const Text(
                    "Light of the World ctjhdjgjyjhgdfghdfytdhdfhghjhfjfjfjhjh",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Appcolors.whitish,
                      fontSize: 12,
                      fontFamily: readexproFontName,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: 5,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6.5,
                        child: const Text(
                          "Frank Edwards",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF737373),
                            fontSize: 8,
                            fontFamily: readexproFontName,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.gray),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2,
                          vertical: 1,
                        ),
                        child: const Text(
                          "A",
                          style: TextStyle(
                            color: Color(0xFF737373),
                            fontSize: 8,
                            fontFamily: readexproFontName,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: const Text(
                          "Elite World jhbcfjebjkebfjkjkfbjekfje",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF737373),
                            fontSize: 8,
                            fontFamily: readexproFontName,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
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
