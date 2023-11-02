import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommunityScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CommunityScreenAppBar({
    super.key,
    required this.iconName,
    required this.controller, required this.onPressed,
  });

  final String iconName;
  final TabController controller;
  final Function() onPressed;

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 70,
            left: 28,
            right: 28,
            bottom: 15,
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xFF737373),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SvgPicture.asset(
              //   "assets/icons/bigBackButton.svg",
              //   width: 20,
              //   height: 20,
              // ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const Text(
                "Your Community",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: readexproFontName,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: onPressed,
                child: SvgPicture.asset(
                  "assets/icons/$iconName.svg",
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        ),
        TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              child: Text(
                "Community you joined",
                style: TextStyle(
                  color: Appcolors.whitish,
                  fontFamily: readexproFontName,
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Community you created",
                style: TextStyle(
                  color: Appcolors.whitish,
                  fontFamily: readexproFontName,
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
