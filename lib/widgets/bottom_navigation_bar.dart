import 'package:citadel/screens/upload_screen.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.selectedPageIndex, required this.onIconTap});

  final int selectedPageIndex;
  final Function onIconTap;

  _bottomBarNavItem(int index, String iconName) {
    bool isSelected = selectedPageIndex == index;
    Color iconColor = isSelected ? const Color(0xFF1715A7) : Colors.white;

    if (isSelected && selectedPageIndex == 0) {
      iconColor = const Color(0xFF1715A7);
    }

    return GestureDetector(
      onTap: () => {onIconTap(index)},
      child: SvgPicture.asset(
        "assets/icons/${isSelected ? '${iconName}_filled' : iconName}.svg",
        // color: iconColor,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      ),
    );
  }

  _midButtonBottomBarNavItem(BuildContext context) {
    // bool isSelected = selectedPageIndex == index;
    // Color iconColor = isSelected ? const Color(0xFF1715A7) : Colors.white;

    // if (isSelected && selectedPageIndex == 0) {
    //   iconColor = Colors.white;
    // }

    return GestureDetector(
      onTap: () {
        // onIconTap(index);

        showModalBottomSheet(
          backgroundColor: Appcolors.bgBlack,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          context: context,
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              // padding: EdgeInsets.only(
              //   bottom: MediaQuery.of(context).viewInsets.bottom,
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 18,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const UploadScreen();
                        }));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/uploadIconWhite.svg",
                            width: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Upload",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: readexproFontName,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Appcolors.whitish,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 18,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/redLiveIcon.svg",
                            width: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Go Live",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: readexproFontName,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: SvgPicture.asset(
        "assets/icons/upload.svg",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final barHeight = MediaQuery.of(context).size.height * 0.07;
    return BottomAppBar(
      color: Appcolors.bgBlack,
      // color: Colors.purple,
      // color: selectedPageIndex == 0 ? Appcolors.bgBlack : Colors.white,
      child: SizedBox(
        height: barHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: _bottomBarNavItem(0, "home")),
            Expanded(child: _bottomBarNavItem(1, "search")),
            Expanded(child: _midButtonBottomBarNavItem(context)),
            Expanded(child: _bottomBarNavItem(2, "community")),
            Expanded(child: _bottomBarNavItem(3, "library")),

            // _bottomBarNavItem(2, "home"),
          ],
        ),
      ),
    );
  }
}
