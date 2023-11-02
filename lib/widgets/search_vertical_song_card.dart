import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget searchVerticalSongCard({
  required ImageProvider coverImage,
  required String titleName,
  required String artistName,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Column(
      children: [
        Image(
          image: coverImage,
          width: 142,
          height: 142,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 9,
        ),
        Container(
          alignment: Alignment.center,
          width: 142,
          child: Text(
            titleName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFFE7E7E7),
              fontFamily: readexproFontName,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.center,
          width: 142,
          child: Text(
            artistName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFFC8C5C5),
              fontFamily: readexproFontName,
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
        ),
      ],
    ),
  );
}
