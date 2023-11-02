import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/search_horizontal_song_card.dart';
import 'package:citadel/widgets/search_vertical_song_card.dart';
import 'package:flutter/material.dart';
import 'package:citadel/widgets/search_screen_appbar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  void onListen() => setState(() {});

  @override
  void initState() {
    super.initState();

    searchController.addListener(onListen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgBlack,
      // backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(95),
        child: Column(
          children: [
            searchScreenAppBar(searchController),
            // const SizedBox(
            //   height: 15,
            // ),
            // const SearchScreenAppbarButtonsRow(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Center(
                child: Text(
                  "Trending Search",
                  style: TextStyle(
                    color: Appcolors.whitish,
                    fontFamily: readexproFontName,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 181,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 12),
                physics: const PageScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return searchVerticalSongCard(
                    coverImage: const AssetImage("assets/images/mockimg.jpg"),
                    titleName: "Thank the Lord",
                    artistName: "Frank Edwards",
                  );
                },
              ),
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   physics: const PageScrollPhysics(),
            //   child: Row(
            //     children: [
            //       searchVerticalSongCard(
            //         coverImage: const AssetImage("assets/images/mockimg.jpg"),
            //         titleName: "Thank the Lord",
            //         artistName: "Frank Edwards",
            //       ),
            //       searchVerticalSongCard(
            //         coverImage: const AssetImage("assets/images/mockimg.jpg"),
            //         titleName: "Thank the Lord",
            //         artistName: "Frank Edwards",
            //       ),
            //       searchVerticalSongCard(
            //         coverImage: const AssetImage("assets/images/mockimg.jpg"),
            //         titleName: "Thank the Lord",
            //         artistName: "Frank Edwards",
            //       ),
            //       searchVerticalSongCard(
            //         coverImage: const AssetImage("assets/images/mockimg.jpg"),
            //         titleName: "Thank the Lord",
            //         artistName: "Frank Edwards",
            //       ),
            //       searchVerticalSongCard(
            //         coverImage: const AssetImage("assets/images/mockimg.jpg"),
            //         titleName: "Thank the Lord",
            //         artistName: "Frank Edwards",
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "Recent search",
                style: TextStyle(
                  color: Appcolors.whitish,
                  fontFamily: readexproFontName,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                searchHorizontalSongCard(
                  coverImage: const AssetImage("assets/images/mockimg.jpg"),
                  titleName: "Light of the World",
                  recordType: "Song",
                  artistName: "Frank Edwards",
                ),
                searchHorizontalSongCard(
                  coverImage: const AssetImage("assets/images/mockimg.jpg"),
                  titleName: "Elite",
                  recordType: "Playlist",
                  artistName: "",
                ),
                searchHorizontalSongCard(
                  coverImage: const AssetImage("assets/images/mockimg.jpg"),
                  titleName: "Elite World",
                  recordType: "Album",
                  artistName: "Frank Edwards",
                ),
                searchHorizontalSongCard(
                  coverImage: const AssetImage("assets/images/mockimg.jpg"),
                  titleName: "Light of the World",
                  recordType: "Song",
                  artistName: "Frank Edwards",
                ),
                searchHorizontalSongCard(
                  coverImage: const AssetImage("assets/images/mockimg.jpg"),
                  titleName: "Light of the World",
                  recordType: "Song",
                  artistName: "Frank Edwards",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
