import 'dart:io';

import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/utils/video_category_list.dart';
import 'package:citadel/widgets/upload_media_container.dart';
import 'package:citadel/widgets/upload_screen_textfield.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  String? selectedValue;
  bool _switchToggleValue = false;
  bool _everythingIsFilled = false;
  TextEditingController videoTitleController = TextEditingController();
  TextEditingController videoDescriptionController = TextEditingController();
  Duration? videoDuration;
  bool _isLoading = false;

  XFile? video;
  ImagePicker imagePicker = ImagePicker();
  XFile? imageFile;
  VideoPlayerController? playerController;

  @override
  void initState() {
    super.initState();
    if (video != null) {
      File theVideoFile = File(video!.path);

      setState(() {
        playerController = VideoPlayerController.file(theVideoFile);
      });

      playerController!.initialize();
      playerController!.play();
      playerController!.setVolume(2);
      playerController!.setLooping(true);
      setState(() {
        videoDuration = playerController!.value.duration;
      });
    }

    print("INITIAL SELECTED VALUE IS $selectedValue");
  }

  @override
  void dispose() {
    super.dispose();
    playerController!.dispose();
  }

  getVideoFile(ImageSource sourceVideo) async {
    final videoFile = await ImagePicker().pickVideo(source: sourceVideo);

    if (videoFile != null) {
      setState(() {
        video = videoFile;
      });
    }
  }

  void pickImageFromGallery() {
    imagePicker.pickImage(source: ImageSource.gallery).then((value) {
      setState(() {
        imageFile = value;
      });
    });
  }

  Widget loadingOverlay() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFF616161).withOpacity(0.36),
        ),
        Center(
          child: LoadingAnimationWidget.prograssiveDots(
            color: const Color(0xFFDE6B00),
            size: 80,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (video != null &&
        imageFile != null &&
        videoTitleController.text.isNotEmpty &&
        selectedValue != null) {
      setState(() {
        _everythingIsFilled = true;
      });
    } else {
      setState(() {
        _everythingIsFilled = false;
      });
    }

    return Scaffold(
      backgroundColor: Appcolors.bgBlack,
      appBar: AppBar(
        backgroundColor: Appcolors.bgBlack,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: const Text(
          "Upload",
          style: TextStyle(
            color: Color(0xFFDDDDDB),
            fontSize: 18,
            fontFamily: readexproFontName,
            fontWeight: FontWeight.w500,
          ),
        ),
        titleSpacing: 25,
        actions: [
          IconButton(
            splashRadius: 0.1,
            onPressed: () {
              Navigator.pop(context);
            },
            padding: const EdgeInsets.all(0),
            icon: const Icon(
              Icons.close_rounded,
              size: 27,
              color: Color(0xFF626262),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4.9,
                    child: GestureDetector(
                      onTap: () {
                        getVideoFile(ImageSource.gallery);
                      },
                      child: video == null
                          ? uploadMediaContainer(
                              "assets/icons/whitePlayIcon.svg",
                              "Tap to Upload Video File",
                            )
                          : Column(
                              children: [
                                VideoPlayer(playerController!),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Duration: ${videoDuration.toString()}",
                                  style: const TextStyle(
                                    color: Appcolors.secondGray,
                                    fontFamily: readexproFontName,
                                    fontSize: 11,
                                  ),
                                )
                              ],
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    // height: 160,
                    height: MediaQuery.of(context).size.height / 4.9,
                    child: GestureDetector(
                      onTap: () {
                        pickImageFromGallery();
                      },
                      child: imageFile == null
                          ? uploadMediaContainer(
                              "assets/icons/whiteCameraIcon.svg",
                              "Tap to Upload Thumbnail Photo",
                            )
                          : Image.file(
                              File(imageFile!.path),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  uploadScreenTextField(
                    hintText: "Video Title",
                    controller: videoTitleController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField2(
                    hint: const Text(
                      'Select Video Category',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Appcolors.secondGray,
                        fontFamily: readexproFontName,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    items: categoryListItems
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontFamily: readexproFontName,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return "Select a category";
                      }
                      return null;
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 10, left: 18),
                      width: 0,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF8F8F8F),
                        weight: 22,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: Appcolors.borderGray,
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                    decoration: const InputDecoration(
                      fillColor: Color(0xFF202020),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                      print("NEW SELECTED VALUE IS $selectedValue");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  uploadScreenTextField(
                    hintText: "Video Description (Optional)",
                    controller: videoDescriptionController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          "Send as Notification to Subscribers?",
                          style: TextStyle(
                            color: Appcolors.secondGray,
                            fontFamily: readexproFontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 1,
                        child: Switch.adaptive(
                          value: _switchToggleValue,
                          inactiveTrackColor: const Color(0xFFC9CBCF),
                          activeTrackColor: const Color(0xFF00CF84),
                          thumbColor: MaterialStateProperty.all(
                              const Color(0xFFFDFDFD)),
                          onChanged: (value) {
                            setState(() {
                              _switchToggleValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            _everythingIsFilled
                                ? const Color(0xFF00CF84)
                                : Appcolors.greyishBlack),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: _everythingIsFilled
                          ? () {
                              setState(() {
                                _isLoading = true;
                              });
                            }
                          : null,
                      child: Text(
                        "Upload",
                        style: TextStyle(
                          color: _everythingIsFilled
                              ? Colors.white
                              : const Color(0xFF8F8F8F),
                          fontFamily: readexproFontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _isLoading ? loadingOverlay() : const SizedBox(),
        ],
      ),
    );
  }
}
