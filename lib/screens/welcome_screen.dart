import 'package:citadel/screens/signup_screen.dart';
import 'package:citadel/widgets/welcome_screen_icon_buton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(left: 35, right: 35, top: 100),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF7300CE),
              Color(0xFF02006C),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome,",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "ReadexPro",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 200,
                child: Text(
                  "Join Millions to Experience Gods",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: "ReadexPro",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.white,
                width: 200,
                height: 50,
                child: const Text(
                  "Citadel",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w800,
                    color: Color(0Xff080072),
                    fontFamily: "ReadexPro",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
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
              child: Container(
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: const Color(0xFF5300B3),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: const Text(
                  "Sign Up for free",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: "ReadexPro",
                  ),
                ),
              ),
            ),
            welcomeScreenIconButton(
              buttonText: "Continue with Google",
              icon: const Icon(
                FontAwesomeIcons.google,
                color: Colors.white,
              ),
            ),
            welcomeScreenIconButton(
              buttonText: "Continue with Apple",
              icon: const Icon(
                FontAwesomeIcons.apple,
                color: Colors.white,
              ),
            ),
            welcomeScreenIconButton(
              buttonText: "Continue with Facebook",
              icon: const Icon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
