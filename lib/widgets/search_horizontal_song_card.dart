import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget searchHorizontalSongCard({
  required ImageProvider coverImage,
  required String titleName,
  required String recordType,
  required String artistName,
}) {
  bool isArtistNameVisible = true;

  if (recordType == "Playlist") {
    isArtistNameVisible = false;
  }

  return Padding(
    padding: const EdgeInsets.only(
      left: 7,
      right: 7,
      bottom: 7,
    ),
    child: Container(
      color: const Color(0xFF1F1F1F),
      padding: const EdgeInsets.only(
        top: 6,
        bottom: 6,
        left: 10,
        right: 26,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: coverImage,
                width: 61,
                height: 61,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleName,
                    style: const TextStyle(
                      color: Appcolors.whitish,
                      fontFamily: readexproFontName,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        recordType,
                        style: const TextStyle(
                          color: Appcolors.whitish,
                          fontFamily: readexproFontName,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Visibility(
                        visible: isArtistNameVisible,
                        child: Row(
                          children: [
                            const Text(
                              " | ",
                              style: TextStyle(
                                color: Appcolors.whitish,
                                fontFamily: readexproFontName,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              artistName,
                              style: const TextStyle(
                                color: Appcolors.whitish,
                                fontFamily: readexproFontName,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/icons/moreoptions.svg",
            width: 17,
            height: 17,
          ),
        ],
      ),
    ),
  );
}
