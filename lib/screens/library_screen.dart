import 'package:citadel/utils/colors.dart';
import 'package:citadel/widgets/library_screen_app_header.dart';
import 'package:citadel/widgets/videos_tab_content.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen>
    with TickerProviderStateMixin {
  // late TabController _firstTabController;
  // late TabController _musicTabController;
  // late TabController _podcastsTabController;
  late TabController _videosTabController;

  @override
  void initState() {
    super.initState();

    // _firstTabController = TabController(length: 3, vsync: this);
    // _musicTabController = TabController(length: 2, vsync: this);
    _videosTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgBlack,
      // backgroundColor: Colors.white,
      appBar: const LibraryScreenAppHeader(/*controller: _firstTabController*/),

      body: videosTabContent(_videosTabController),
    );
  }
}
