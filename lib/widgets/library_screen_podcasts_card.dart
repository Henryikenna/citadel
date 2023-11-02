import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget libraryScreenPodcastsCard(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      left: 18,
      right: 18,
      bottom: 5,
    ),
    padding: const EdgeInsets.only(
      right: 13,
    ),
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
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: const Color(0xFFA7AFBA),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: const Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage("assets/images/mockpfp.jpg"),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Icon(
                      Icons.mic,
                      color: Color(0xFF2A1CFF),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: const Text(
                    "Reaching to Souls",
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
                  height: 4,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: const Text(
                    "Frank Edwards",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Appcolors.gray,
                      fontSize: 10,
                      fontFamily: readexproFontName,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "12:00 mins",
                  style: TextStyle(
                    color: Appcolors.gray,
                    fontSize: 8,
                    fontFamily: readexproFontName,
                    fontWeight: FontWeight.w300,
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
