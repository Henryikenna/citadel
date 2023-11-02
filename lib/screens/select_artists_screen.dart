
import 'package:citadel/screens/navigation_container.dart';
import 'package:flutter/material.dart';

class SelectArtistsScreen extends StatelessWidget {
  const SelectArtistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) {
                return const NavigationContainer();
              }),
              (route) => false,
            );
          },
          child: const Text(
            "Next",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
