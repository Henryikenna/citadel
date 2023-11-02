import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

class LibraryScreenAppHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const LibraryScreenAppHeader({
    super.key,
  });

  // final TabController controller;

  @override
  Size get preferredSize => const Size.fromHeight(220);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 70,
        left: 28,
        right: 28,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 25,
                height: 25,
              ),
              Text(
                "Your Community",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: readexproFontName,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/mockpfp.jpg"),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          // TabBar(
          //   controller: controller,
          //   indicator: const BoxDecoration(
          //     color: Color(0xFF3C3B8D),
          //   ),
          //   tabs: const [
          //     Tab(
          //       child: Text(
          //         "Music",
          //         style: TextStyle(
          //           color: Color(0xFFF6F6F6),
          //           fontFamily: readexproFontName,
          //           fontWeight: FontWeight.w500,
          //           fontSize: 12,
          //         ),
          //       ),
          //     ),
          //     Tab(
          //       child: Text(
          //         "Videos",
          //         style: TextStyle(
          //           color: Color(0xFFF6F6F6),
          //           fontFamily: readexproFontName,
          //           fontWeight: FontWeight.w500,
          //           fontSize: 12,
          //         ),
          //       ),
          //     ),
          //     Tab(
          //       child: Text(
          //         "Podcasts",
          //         style: TextStyle(
          //           color: Color(0xFFF6F6F6),
          //           fontFamily: readexproFontName,
          //           fontWeight: FontWeight.w500,
          //           fontSize: 12,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          TextField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: Appcolors.whitish,
              fontSize: 13,
              fontFamily: readexproFontName,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFF1F1F1F),
              hintText: "Search library",
              hintStyle: TextStyle(
                color: Appcolors.whitish,
                fontSize: 12,
                fontFamily: readexproFontName,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.search,
                  color: Appcolors.whitish,
                  size: 20,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Videos",
            style: TextStyle(
              color: Color(0xFFF6F6F6),
              fontFamily: readexproFontName,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
