import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget messageCard({
  required ImageProvider profilePicture,
  required String chatTitle,
  required String messagePreview,
  required int noOfMessages,
  required bool isNoOfMessagesVisible,
  required BuildContext context,
}) {
  return Container(
    color: const Color(0xFF1F1F1F),
    padding: const EdgeInsets.only(
      top: 10,
      bottom: 10,
      left: 10,
      right: 15,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 27.5,
              backgroundImage: profilePicture,
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    chatTitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: readexproFontName,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    messagePreview,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: readexproFontName,
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Visibility(
          visible: isNoOfMessagesVisible,
          child: Container(
            alignment: Alignment.center,
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Appcolors.mainGreen,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              noOfMessages.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontFamily: readexproFontName,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
