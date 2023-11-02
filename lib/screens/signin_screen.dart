import 'package:citadel/screens/signup_screen.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/form_label_text.dart';
import 'package:citadel/widgets/form_textfield.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgBlack,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
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
                "Welcome, Log in",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: readexproFontName,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
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
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
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

                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return const FinishingUpScreen();
                    // }));
                  },
                  child: const Text(
                    "Log in",
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
                    "Don't have an account?",
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
                          return const SignUpScreen();
                        }),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      "Sign up",
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
