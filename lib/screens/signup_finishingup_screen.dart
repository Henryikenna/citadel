import 'package:citadel/screens/splashscreen_signup.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/finishingup_screen_date_textfields.dart';
import 'package:citadel/widgets/form_label_text.dart';
import 'package:flutter/material.dart';

class FinishingUpScreen extends StatefulWidget {
  const FinishingUpScreen({super.key});

  @override
  State<FinishingUpScreen> createState() => _FinishingUpScreenState();
}

class _FinishingUpScreenState extends State<FinishingUpScreen> {
  // final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onListen() => setState(() {});

  @override
  void initState() {
    super.initState();

    passwordController.addListener(onListen);
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.removeListener(onListen);

    emailController.dispose();
    passwordController.dispose();
  }

  bool _isGenderButtonClicked = false;
  bool _isGenderButtonClicked2 = false;
  bool _isGenderButtonClicked3 = false;

  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgBlack,
      // backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 90,
          left: 26,
          right: 26,
          bottom: 40,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Finishing up...",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: readexproFontName,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // DotStepper(
              //   tappingEnabled: false,
              //   lineConnectorsEnabled: true,
              //   indicator: Indicator.jump,
              //   indicatorDecoration: const IndicatorDecoration(
              //     color: Color(0xFF1715A7),
              //     strokeColor: Color(0xFF1715A7),
              //   ),
              //   fixedDotDecoration: const FixedDotDecoration(
              //     color: Color(0xFFE9E9E9),
              //   ),
              //   lineConnectorDecoration: LineConnectorDecoration(
              //     strokeWidth: 2,
              //     color: activeStep == 0
              //         ? Colors.blueGrey
              //         : const Color(0xFF1715A7),
              //   ),
              //   spacing: 20,
              //   activeStep: activeStep,
              //   dotCount: dotCount,
              //   dotRadius: 10,
              // ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: List.generate(dotCount, (index) {
              //     return ElevatedButton(
              //       child: Text('${index + 1}'),
              //       onPressed: () {
              //         setState(() {
              //           activeStep = index;
              //         });
              //       },
              //     );
              //   }),
              // ),

              const SizedBox(
                height: 40,
              ),

              Column(
                children: [
                  formLabel("What's your date of birth?"),
                  const SizedBox(
                    height: 13,
                  ),
                  const FinishingupScreenDateTextfields(),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  formLabel("What's your gender?"),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isGenderButtonClicked = !_isGenderButtonClicked;
                            _isGenderButtonClicked2 = false;
                            _isGenderButtonClicked3 = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _isGenderButtonClicked
                                ? const Color(0xFFC9C8F5)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: const Color(0xFFC9C8F5),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 15,
                          ),
                          child: Text(
                            "Male",
                            style: TextStyle(
                              color: _isGenderButtonClicked
                                  ? Appcolors.blackish
                                  : Colors.white,
                              fontFamily: readexproFontName,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isGenderButtonClicked2 = !_isGenderButtonClicked2;
                            _isGenderButtonClicked = false;
                            _isGenderButtonClicked3 = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _isGenderButtonClicked2
                                ? const Color(0xFFC9C8F5)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: const Color(0xFFC9C8F5),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 15,
                          ),
                          child: Text(
                            "Female",
                            style: TextStyle(
                              color: _isGenderButtonClicked2
                                  ? Appcolors.blackish
                                  : Colors.white,
                              fontFamily: readexproFontName,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isGenderButtonClicked3 = !_isGenderButtonClicked3;
                            _isGenderButtonClicked2 = false;
                            _isGenderButtonClicked = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _isGenderButtonClicked3
                                ? const Color(0xFFC9C8F5)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: const Color(0xFFC9C8F5),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          child: Text(
                            "Prefer not to say",
                            style: TextStyle(
                              color: _isGenderButtonClicked3
                                  ? Appcolors.blackish
                                  : Colors.white,
                              fontFamily: readexproFontName,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: _checkboxValue,
                          fillColor: MaterialStateProperty.all(
                            const Color(0xFFF5F5F5),
                          ),
                          checkColor: Appcolors.blackish,
                          splashRadius: 0,
                          side: BorderSide.none,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkboxValue = value!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),

                      // const SizedBox(
                      //   // width: MediaQuery.sizeOf(context).width,
                      //   width: 280,
                      //   child: Text(
                      //     "I agree to the Citadel Terms and conditions and Privacy Policy",
                      //     softWrap: true,
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontFamily: readexproFontName,
                      //       fontSize: 12,
                      //     ),
                      //   ),
                      // ),

                      SizedBox(
                        width: 280,
                        child: RichText(
                          text: const TextSpan(
                            text: "I agree to the Citadel ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: readexproFontName,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: "Terms and conditions ",
                                style: TextStyle(
                                  color: Color(0xFFC9C8F5),
                                  fontFamily: readexproFontName,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: "and ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: readexproFontName,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                  color: Color(0xFFC9C8F5),
                                  fontFamily: readexproFontName,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: 180,
                  height: 60,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF12108C),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SignUpSuccessSplashScreen();
                        }),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      "Complete",
                      style: TextStyle(
                        fontFamily: readexproFontName,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: SizedBox(
                  width: 77,
                  height: 44,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(
                          width: 2.0,
                          color: Appcolors.borderGray,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Already have an account?",
              //       style: TextStyle(
              //         fontFamily: readexproFontName,
              //         fontSize: 14,
              //         color: Color(0xFF9E9E9E),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Text(
              //       "Log in",
              //       style: TextStyle(
              //         fontFamily: readexproFontName,
              //         fontSize: 14,
              //         fontWeight: FontWeight.w600,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
