import 'package:citadel/screens/select_artists_screen.dart';
import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

class SignUpSuccessSplashScreen extends StatefulWidget {
  const SignUpSuccessSplashScreen({super.key});

  @override
  State<SignUpSuccessSplashScreen> createState() =>
      _SignUpSuccessSplashScreenState();
}

class _SignUpSuccessSplashScreenState extends State<SignUpSuccessSplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToPageAfterDelay();
  }

  void navigateToPageAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));

    // ignore: use_build_context_synchronously
    Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SelectArtistsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        },
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          // padding: const EdgeInsets.only(left: 35, right: 35, top: 100),
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
          child: const Stack(
            children: [
              Positioned(
                right: -60,
                top: 80,
                child: Image(
                  image: AssetImage("assets/images/headphones.png"),
                ),
              ),
              Positioned(
                left: -30,
                bottom: -25,
                child: Image(
                  image: AssetImage("assets/images/speaker.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Center(
                  child: Text(
                    "You have joined millions of streamers to experience God's Citadel",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: readexproFontName,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
