import 'package:citadel/screens/signin_screen.dart';
import 'package:citadel/screens/signup_finishingup_screen.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/form_label_text.dart';
import 'package:citadel/widgets/form_textfield.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // List<String> points = [
  //   '',
  //   '',
  // ];

  void onListen() => setState(() {});

  @override
  void initState() {
    super.initState();

    passwordController.addListener(onListen);
    confirmPasswordController.addListener(onListen);
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.removeListener(onListen);
    confirmPasswordController.removeListener(onListen);

    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  bool _obscureText = true;
  bool _obscureText2 = true;

  bool _isCheckVisible = false;

  // List<Step> getSteps() => [
  //       Step(
  //         title: const Text(""),
  //         content: Container(),
  //       ),
  //       Step(
  //         title: const Text(""),
  //         content: Container(),
  //       ),
  //     ];

  @override
  Widget build(BuildContext context) {
    if (confirmPasswordController.text == passwordController.text) {
      setState(() {
        _isCheckVisible = !_isCheckVisible;
      });
    } else {
      setState(() {
        _isCheckVisible = false;
      });
    }

    // int activeStep = 0;
    // int dotCount = 2;

    // var lineWidth = 100; // screen width - 2 * padding
    // var space = lineWidth / points.length; //space between dots
    // var currentSteps = 3;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign up for free to start listening.",
                textAlign: TextAlign.center,
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

              Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      formLabel("What's your name?"),
                      formTextField(
                        hintText: "What's your name?",
                        textInputType: TextInputType.text,
                        obscureText: false,
                        validationFunction: (username) => username!.isEmpty
                            ? "Name field cannot be left empty"
                            : null,
                      ),
                      formLabel("Email"),
                      formTextField(
                        hintText: "markdolnads@gmail.com",
                        textInputType: TextInputType.emailAddress,
                        controller: emailController,
                        obscureText: false,
                        validationFunction: (email) =>
                            email != null && !EmailValidator.validate(email)
                                ? "Enter a valid email"
                                : null,
                        autofillHints: [AutofillHints.email],
                      ),
                      formLabel("Password"),
                      formTextField(
                        hintText: "Choose Strong Password",
                        textInputType: TextInputType.text,
                        controller: passwordController,
                        validationFunction: (password) => password!.isEmpty
                            ? "Password field cannot be left empty"
                            : null,
                        suffixIcon: passwordController.text.isEmpty
                            ? Container(width: 0)
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility_rounded
                                        : Icons.visibility_off_outlined,
                                    color: const Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                        obscureText: _obscureText,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 15),
                        child: FlutterPwValidator(
                          controller: passwordController,
                          width: 300,
                          height: 100,
                          minLength: 6,
                          onSuccess: () {},
                          onFail: () {},
                          defaultColor: const Color(0xFF9696A9),
                          uppercaseCharCount: 1,
                          numericCharCount: 1,
                          specialCharCount: 1,
                        ),
                      ),
                      formLabel("Confirm Password"),
                      formTextField(
                        hintText: "Re-enter Password",
                        textInputType: TextInputType.text,
                        controller: confirmPasswordController,
                        validationFunction: (confirmPassword) =>
                            confirmPassword!.isEmpty
                                ? "Confirm Password field cannot be left empty"
                                : null,
                        suffixIcon: confirmPasswordController.text.isEmpty
                            ? Container(width: 0)
                            : Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Visibility(
                                    visible: _isCheckVisible,
                                    child: const Icon(
                                      Icons.check_circle_outline_rounded,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _obscureText2 = !_obscureText2;
                                      });
                                    },
                                    icon: Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Icon(
                                        _obscureText2
                                            ? Icons.visibility_rounded
                                            : Icons.visibility_off_outlined,
                                        color: const Color(0xFF9E9E9E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        obscureText: _obscureText2,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 15),
                        child: FlutterPwValidator(
                          controller: confirmPasswordController,
                          width: 300,
                          height: 100,
                          minLength: 6,
                          onSuccess: () {},
                          onFail: () {},
                          defaultColor: const Color(0xFF9696A9),
                          uppercaseCharCount: 1,
                          numericCharCount: 1,
                          specialCharCount: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 58,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF12108C),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    final form = formKey.currentState!;
                    if (form.validate()) {
                      // final email = emailController.text;
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return const FinishingUpScreen();
                      // }));
                    }

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const FinishingUpScreen();
                    }));

                    // if (activeStep < dotCount - 1) {
                    //   setState(() {
                    //     activeStep++;
                    //   });
                    // }
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      fontFamily: readexproFontName,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: readexproFontName,
                      fontSize: 14,
                      color: Color(0xFF9E9E9E),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SignInScreen();
                        }),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontFamily: readexproFontName,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Center(
//                 child: SizedBox(
//                   width: 100,
//                   height: 60.0,
//                   child: Stack(
//                     children: [
//                       //grey line
//                       Positioned(
//                         top: 15,
//                         left: 0,
//                         right: 0,
//                         child: Container(
//                           height: 2.0,
//                           width: double.infinity,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       //red line
//                       Positioned(
//                         top: 15,
//                         left: 0,
//                         child: Container(
//                           height: 2.0,
//                           width: space * (currentSteps - 1) + space / 2,
//                           color: Colors.orange,
//                         ),
//                       ),
//                       //circles
//                       Row(
//                         children: points
//                             .asMap()
//                             .map((i, point) => MapEntry(
//                                   i,
//                                   SizedBox(
//                                     width: space,
//                                     child: Column(
//                                       children: [
//                                         Stack(
//                                           children: [
//                                             Container(
//                                               height: 30.0,
//                                               width: 30.0,
//                                               decoration: BoxDecoration(
//                                                 shape: BoxShape.circle,
//                                                 border: Border.all(
//                                                   width: 1.5,
//                                                   color: i == currentSteps - 1
//                                                       ? Colors.orange
//                                                       : Colors.transparent,
//                                                 ),
//                                               ),
//                                               child: Center(
//                                                 child: Container(
//                                                   height: 20.0,
//                                                   width: 20.0,
//                                                   decoration: BoxDecoration(
//                                                     shape: BoxShape.circle,
//                                                     color: i < currentSteps
//                                                         ? Colors.orange
//                                                         : Colors.grey,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             if (i < currentSteps - 1)
//                                               const SizedBox(
//                                                 height: 30.0,
//                                                 width: 30.0,
//                                                 child: Center(
//                                                   child: Icon(
//                                                     Icons.check,
//                                                     size: 16.0,
//                                                     color: Colors.white,
//                                                   ),
//                                                 ),
//                                               ),
//                                           ],
//                                         ),
//                                         const SizedBox(height: 4.0),
//                                         Text(
//                                           point,
//                                           textAlign: TextAlign.left,
//                                           style: TextStyle(
//                                             color: i < currentSteps
//                                                 ? Colors.orange
//                                                 : Colors.grey,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ))
//                             .values
//                             .toList(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
