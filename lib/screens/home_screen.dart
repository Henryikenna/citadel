import 'package:citadel/mock_data/mock.dart';
import 'package:citadel/screens/watch_full_video_screen.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/home_screen_appbar.dart';
import 'package:citadel/widgets/hompage_video_right_sidebar.dart';
import 'package:citadel/widgets/video_details.dart';
import 'package:citadel/widgets/video_tile.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true; //To preserve the state of the tabs

  int snappedPageIndex = 0;

  bool isWatchVideoOverlayVisible = false;

  void showWatchVideoOverlay() async {
    await Future.delayed(const Duration(seconds: 30), () {
      setState(() {
        isWatchVideoOverlayVisible = true;
      });
    });
  }


  @override
  void initState() {
    super.initState();

    if (snappedPageIndex == 0) {
      showWatchVideoOverlay();
    }
  }

  // Widget showWatchVideoOverlay() {
  //   Future.delayed(const Duration(seconds: 30), () {
  //     return InkWell(
  //       onTap: () {
  //         FocusManager.instance.primaryFocus?.unfocus();
  //       },
  //       child: TextButton(
  //         onPressed: () {},
  //         child: const Text(
  //           "Watch Full Video",
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontWeight: FontWeight.bold,
  //             fontFamily: readexproFontName,
  //           ),
  //         ),
  //       ),
  //     );
  //   });
  // }

  // late VideoPlayerController controller;

  // @override
  // void initState() {
  //   super.initState();

  //   // loadVideoPlayer();
  // }

  // loadVideoPlayer() {
  //   controller = VideoPlayerController.asset("assets/videos/vid1.mp4");
  //   controller.addListener(() {
  //     setState(() {});
  //   });
  //   controller.initialize().then((value) {
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    

    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.black,
          appBar: const HomeScreenAppBar(),
          body: TabBarView(
            children: <Widget>[
              // PageView(
              //   scrollDirection: Axis.vertical,
              //   children: [
              //     Image.network(
              //       "https://images.pexels.com/photos/6590699/pexels-photo-6590699.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.jpg",
              //     ),
              //     Image.network(
              //       "https://images.pexels.com/photos/16059681/pexels-photo-16059681/free-photo-of-clouds-over-mountains.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.jpg",
              //     ),
              //     Image.asset("assets/images/headphones.png"),
              //     // AspectRatio(
              //     //   aspectRatio: controller.value.aspectRatio,
              //     //   child: VideoPlayer(controller),
              //     // ),
              //   ],
              // ),
              PageView.builder(
                onPageChanged: (int page) {
                  setState(() {
                    snappedPageIndex = page;

                    isWatchVideoOverlayVisible = false;
                  });

                  showWatchVideoOverlay();

                  print("page changed to $page");
                },
                scrollDirection: Axis.vertical,
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      VideoTile(
                        video: videos[index],
                        currentIndex: index,
                        snappedPageIndex: snappedPageIndex,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 5,
                            child: VideoDetails(
                              video: videos[index],
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                              child: HomepageVideoRightSidebar(
                                video: videos[index],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: isWatchVideoOverlayVisible,
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          width: double.infinity,
                          height: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isWatchVideoOverlayVisible = false;
                              });
                            },
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return WatchFullVideoScreen(
                                        video: videos[index],
                                        videoIndex: index,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Watch Full Video",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: readexproFontName,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
              const Center(
                child: Text("Subscriptions"),
              ),
              const Center(
                child: Text("Live"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
