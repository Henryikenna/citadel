import 'package:citadel/screens/notifications_screen.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x4D272727),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
              top: 20,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const NotificationsScreen();
                        },
                      ),
                    );
                  },
                  child: Badge(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      "assets/icons/notification.svg",
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.account_circle_rounded,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "For You",
                  style: TextStyle(
                    fontFamily: readexproFontName,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Subscriptions",
                  style: TextStyle(
                    fontFamily: readexproFontName,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/liveicon.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Live",
                      style: TextStyle(
                        fontFamily: readexproFontName,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
