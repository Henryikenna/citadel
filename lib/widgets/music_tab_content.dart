import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/library_screen_song_card.dart';
import 'package:flutter/material.dart';

Widget musicTabContent(TabController controller) {
  return Column(
    children: [
      TabBar(
        controller: controller,
        padding: const EdgeInsets.only(
          // top: 30,
          left: 25,
          right: 25,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        indicator: BoxDecoration(
          color: const Color(0xFF5300B3),
          border: Border.all(
            width: 2,
            color: Appcolors.purpleish,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        tabs: const [
          Tab(
            child: Text(
              "Downloaded",
              style: TextStyle(
                color: Color(0xFFF6F6F6),
                fontFamily: readexproFontName,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          Tab(
            child: Text(
              "Playlists",
              style: TextStyle(
                color: Color(0xFFF6F6F6),
                fontFamily: readexproFontName,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Expanded(
        child: TabBarView(
          controller: controller,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
                return libraryScreenSongCard(context);
              },
            ),
            const Center(
              child: Text(
                "Playlist",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
