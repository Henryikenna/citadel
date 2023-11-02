import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget pickImageBottomSheetContent({
  required BuildContext context,
  required Function() pickFromGalleryFunction,
  required Function() takeFromCameraFunction,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 18,
        child: TextButton(
          onPressed: pickFromGalleryFunction,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_outlined,
                size: 22,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Pick from Gallery",
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
          onPressed: takeFromCameraFunction,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.camera_alt_outlined,
                size: 22,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Take Picture",
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
  );
}
