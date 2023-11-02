import 'dart:io';

import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/create_community_text_field.dart';
import 'package:citadel/widgets/form_label_text.dart';
import 'package:citadel/widgets/pick_image_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class CreateCommunityScreen extends StatefulWidget {
  const CreateCommunityScreen({super.key});

  @override
  State<CreateCommunityScreen> createState() => _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends State<CreateCommunityScreen> {
  ImagePicker imagePicker = ImagePicker();

  XFile? imageFile;

  void pickFromGallery() {
    imagePicker.pickImage(source: ImageSource.gallery).then((value) {
      setState(() {
        imageFile = value;
      });
    });
  }

  void pickFromCamera() {
    imagePicker.pickImage(source: ImageSource.camera).then((value) {
      setState(() {
        imageFile = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgBlack,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Appcolors.bgBlack,
        title: const Text(
          "Create Community",
          style: TextStyle(
            color: Colors.white,
            fontFamily: readexproFontName,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: const Color(0xFF1F1F1F),
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
                          child: pickImageBottomSheetContent(
                            context: context,
                            pickFromGalleryFunction: pickFromGallery,
                            takeFromCameraFunction: pickFromCamera,
                          ),
                        );
                      },);
                },
                child: Center(
                  child: Container(
                    width: 90,
                    height: 90,
                    margin: const EdgeInsets.only(top: 45),
                    decoration: BoxDecoration(
                      color: const Color(0xFF8A70A8),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: imageFile == null
                        ? SvgPicture.asset(
                            "assets/icons/plusBig.svg",
                            width: 30,
                            height: 30,
                            fit: BoxFit.none,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.file(
                              File(imageFile!.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Text(
                "Choose your community display picture",
                style: TextStyle(
                  color: Color(0xFFF3F3F3),
                  fontFamily: readexproFontName,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              formLabel("Community Name"),
              const SizedBox(
                height: 5,
              ),
              createCommunityTextField(
                maxLines: 1,
                maxLength: 40,
                hintText: "Lancelot Nigeria",
              ),
              const SizedBox(
                height: 25,
              ),
              formLabel("Community Description"),
              const SizedBox(
                height: 5,
              ),
              createCommunityTextField(
                maxLines: 5,
                maxLength: 200,
                hintText: "Lancelot Nigeria",
              ),
              const SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Appcolors.purpleish,
                            width: 1.0,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color(0xFFF5F5F5),
                          fontFamily: readexproFontName,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFF3C3B8D),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Color(0xFF3C3B8D),
                            width: 1.0,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Create",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: readexproFontName,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
