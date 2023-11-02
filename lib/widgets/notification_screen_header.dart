import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

class NotificationScreenHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationScreenHeader({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        left: 30,
        right: 30,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Appcolors.whitish,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Appcolors.whitish,
                size: 22,
              ),
            ),
          ),
          const Text(
            "Your Notifications",
            style: TextStyle(
              fontSize: 15,
              fontFamily: readexproFontName,
              fontWeight: FontWeight.bold,
              color: Appcolors.whitish,
            ),
          ),
          const SizedBox(
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
