import 'package:citadel/models/video.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomepageVideoRightSidebar extends StatefulWidget {
  const HomepageVideoRightSidebar({super.key, required this.video});

  final Video video;

  @override
  State<HomepageVideoRightSidebar> createState() =>
      _HomepageVideoRightSidebarState();
}

// class _HomepageVideoRightSidebarState extends State<HomepageVideoRightSidebar>
//     with SingleTickerProviderStateMixin {
class _HomepageVideoRightSidebarState extends State<HomepageVideoRightSidebar> {
  // late AnimationController _animationController;

  _sideBarItem({
    required String iconName,
    required String label,
    required bool labelVisible,
  }) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/icons/$iconName.svg",
          colorFilter: ColorFilter.mode(
            Appcolors.homepageIconColor.withOpacity(0.8),
            BlendMode.srcIn,
          ),
        ),
        Visibility(
          visible: labelVisible,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFFEEEEEE),
                  fontSize: 10,
                  fontFamily: readexproFontName,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 90),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _sideBarItem(
              iconName: "heart", label: widget.video.likes, labelVisible: true),
          _sideBarItem(
            iconName: "comment",
            label: widget.video.comments,
            labelVisible: true,
          ),
          _sideBarItem(iconName: "share", label: "Share", labelVisible: true),
          _sideBarItem(iconName: "favorites", label: "", labelVisible: false),
          _sideBarItem(iconName: "moreoptions", label: "", labelVisible: false),
          // AnimatedBuilder(
          //   animation: _animationController,
          //   builder: (context, child) {
          //     return Transform.rotate(
          //         angle: 2 * pi * _animationController.value);
          //   },
          // ),
        ],
      ),
    );
  }
}


// @override
//   void initState() {
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 5),
//     );
//     super.initState();
//   }