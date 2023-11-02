import 'package:citadel/models/video.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class VideoDetails extends StatefulWidget {
  const VideoDetails({
    super.key,
    required this.video,
  });

  final Video video;

  @override
  State<VideoDetails> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
  bool isSubscribed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      // height: MediaQuery.of(context).size.height / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage:
                    NetworkImage(widget.video.postedBy.profileImageUrl),
                backgroundColor: Appcolors.purpleish,
              ),
              const SizedBox(width: 8),
              Opacity(
                opacity: 0.9,
                child: Text(
                  "@${widget.video.postedBy.username}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    fontFamily: readexproFontName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                isSubscribed = !isSubscribed;
              });
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 3,
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                isSubscribed
                    ? Appcolors.redish.withOpacity(0.75)
                    : Colors.transparent,
              ),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: isSubscribed
                      ? Colors.transparent
                      : Colors.white.withOpacity(0.8),
                  width: 2.0,
                ),
              ),
            ),
            child: Text(
              isSubscribed ? "Subscribed" : "Subscribe",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: readexproFontName,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Opacity(
            opacity: 0.9,
            child: Text(
              widget.video.videoTitle,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: readexproFontName,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Opacity(
            opacity: 0.9,
            child: ExpandableText(
              widget.video.caption,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: readexproFontName,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              expandText: "see more",
              collapseText: "see less",
              collapseOnTextTap: true,
              expandOnTextTap: true,
              maxLines: 2,
              linkColor: Colors.grey.shade50,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          // ExpandableText(
          //   "#tag #tag #tag #tag #tag #tag #tag #tag #tag #tag #tag",
          //   style: const TextStyle(
          //     color: Colors.white,
          //     fontFamily: readexproFontName,
          //     fontSize: 12,
          //     fontWeight: FontWeight.w500,
          //   ),
          //   expandText: "see more",
          //   collapseText: "see less",
          //   collapseOnTextTap: true,
          //   expandOnTextTap: true,
          //   maxLines: 1,
          //   linkColor: Colors.grey.shade50,
          // ),
          // const Row(
          //   children: [
          //     Text(
          //       "#tags ",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontFamily: readexproFontName,
          //         fontSize: 12,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //     Text(
          //       "#tags ",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontFamily: readexproFontName,
          //         fontSize: 12,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //     Text(
          //       "#tags ",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontFamily: readexproFontName,
          //         fontSize: 12,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //   ],
          // ),

          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
