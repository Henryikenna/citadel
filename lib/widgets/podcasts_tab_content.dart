import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/library_screen_podcasts_card.dart';
import 'package:flutter/material.dart';

Widget podcastsTabContent(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        const Text(
          "Downloads",
          style: TextStyle(
            fontSize: 16,
            fontFamily: readexproFontName,
            color: Appcolors.gray,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        libraryScreenPodcastsCard(context),
        libraryScreenPodcastsCard(context),
        libraryScreenPodcastsCard(context),
      ],
    ),
  );
}
