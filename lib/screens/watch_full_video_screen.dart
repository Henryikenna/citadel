import 'package:chewie/chewie.dart';
import 'package:citadel/mock_data/mock.dart';
import 'package:citadel/models/video.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/watch_full_video_icon_row.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

class WatchFullVideoScreen extends StatefulWidget {
  const WatchFullVideoScreen({
    super.key,
    required this.video, required this.videoIndex,
  });

  final Video video;
  final int videoIndex;

  @override
  State<WatchFullVideoScreen> createState() => _WatchFullVideoScreenState();
}

class _WatchFullVideoScreenState extends State<WatchFullVideoScreen> {
  late VideoPlayerController _videoPlayerController;

  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    // switch (widget.dataSourceType) {
    //   case DataSourceType.asset:
    //     _videoPlayerController = VideoPlayerController.asset(widget.videoUrl);
    //     break;
    //   case DataSourceType.network:
    //     _videoPlayerController =
    //         VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    //     break;
    //   case DataSourceType.file:
    //     _videoPlayerController =
    //         VideoPlayerController.file(File(widget.videoUrl));
    //     break;
    //   case DataSourceType.contentUri:
    //     _videoPlayerController =
    //         VideoPlayerController.contentUri(Uri.parse(widget.videoUrl));
    //     break;
    // }

    _videoPlayerController =
        VideoPlayerController.asset("assets/videos/${widget.video.videoUrl}");

    _videoPlayerController.initialize().then(
          (_) => setState(
            () => _chewieController = ChewieController(
              autoPlay: true,
              videoPlayerController: _videoPlayerController,
              aspectRatio: _videoPlayerController.value.aspectRatio,
              materialProgressColors: ChewieProgressColors(
                // handleColor: const Color(0xFFBCBCBC).withOpacity(0.5),
                playedColor: const Color(0xFF12108C),
                // bufferedColor: const Color(0xFFBCBCBC).withOpacity(0.5),
                // backgroundColor: const Color(0xFFBCBCBC).withOpacity(0.5),
              ),
              cupertinoProgressColors: ChewieProgressColors(
                playedColor: const Color(0xFF12108C),
              ),
            ),
          ),
        );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Appcolors.bgBlack,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              elevation: 0.0,
              floating: true,
              backgroundColor: Appcolors.bgBlack,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _videoPlayerController.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _videoPlayerController.value.aspectRatio,
                          child: Chewie(controller: _chewieController),
                        )
                      : const SizedBox.shrink(),
                  Container(
                    color: Appcolors.openedNotifColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.video.videoTitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: readexproFontName,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          widget.video.caption,
                          style: const TextStyle(
                            color: Appcolors.whitish,
                            fontSize: 10,
                            fontFamily: readexproFontName,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xFF535F72),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        watchFullVideoRow("heart", widget.video.likes),
                        watchFullVideoRow("shareIcon", "Share"),
                        watchFullVideoRow("downloadIcon", "Download"),
                        watchFullVideoRow("watchLaterIcon", "Watch Later"),
                      ],
                    ),
                  ),
                  Container(
                    color: Appcolors.openedNotifColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                widget.video.postedBy.profileImageUrl,
                              ),
                              radius: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              widget.video.postedBy.username,
                              style: const TextStyle(
                                fontFamily: readexproFontName,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF646464),
                                ),
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 5,
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: readexproFontName,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              "Join ${widget.video.postedBy.followers} Subscribers",
                              style: const TextStyle(
                                color: Appcolors.whitish,
                                fontSize: 8,
                                fontFamily: readexproFontName,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xFF7C8593),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 21,
                      vertical: 10,
                    ),
                    child: Text(
                      "${widget.video.videoComment.length} Comments",
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: readexproFontName,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.video.videoComment.length,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    widget.video.videoComment[index]
                                        .profileImageUrl,
                                  ),
                                  radius: 10,
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: ExpandableText(
                                    widget.video.videoComment[index].comment,
                                    style: const TextStyle(
                                      color: Color(0xFFF3F3F3),
                                      fontFamily: readexproFontName,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    expandText: "see more",
                                    collapseText: "see less",
                                    collapseOnTextTap: true,
                                    expandOnTextTap: true,
                                    maxLines: 3,
                                    linkColor: Appcolors.borderGray,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/heart.svg",
                                  width: 15,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  widget.video.videoComment[index].likes,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: readexproFontName,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
