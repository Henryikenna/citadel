import 'package:citadel/models/functions/search_buttons_toggle.dart';
import 'package:citadel/widgets/search_screen_appbar_button.dart';
import 'package:flutter/material.dart';

class SearchScreenAppbarButtonsRow extends StatefulWidget {
  const SearchScreenAppbarButtonsRow({super.key});

  @override
  State<SearchScreenAppbarButtonsRow> createState() =>
      _SearchScreenAppbarButtonsRowState();
}

class _SearchScreenAppbarButtonsRowState
    extends State<SearchScreenAppbarButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 12),
      physics: const PageScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          searchScreenAppBarButton(
            "Top",
            () {
              setState(() {
                topButtonPressed();
              });
            },
            topIsSelected,
          ),
          const SizedBox(
            width: 10,
          ),
          searchScreenAppBarButton(
            "Albums",
            () {
              setState(() {
                albumsButtonPressed();
              });
            },
            albumsIsSelected,
          ),
          const SizedBox(
            width: 10,
          ),
          searchScreenAppBarButton(
            "Artists",
            () {
              setState(() {
                artistsButtonPressed();
              });
            },
            artistsIsSelected,
          ),
          const SizedBox(
            width: 10,
          ),
          searchScreenAppBarButton(
            "Songs",
            () {
              setState(() {
                songsButtonPressed();
              });
            },
            songsIsSelected,
          ),
          const SizedBox(
            width: 10,
          ),
          searchScreenAppBarButton(
            "Playlists",
            () {
              setState(() {
                playlistsButtonPressed();
              });
            },
            playlistsIsSelected,
          ),
          const SizedBox(
            width: 10,
          ),
          searchScreenAppBarButton(
            "Videos",
            () {
              setState(() {
                videosButtonPressed();
              });
            },
            videosIsSelected,
          ),
          const SizedBox(
            width: 10,
          ),
          searchScreenAppBarButton(
            "Podcast",
            () {
              setState(() {
                podcastsButtonPressed();
              });
            },
            podcastIsSelected,
          ),
        ],
      ),
    );
  }
}
