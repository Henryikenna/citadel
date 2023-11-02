import 'package:flutter/material.dart';

Widget welcomeScreenIconButton(
    {required String buttonText, required Icon icon, void Function()? onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: const Color(0xFF5300B3),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: "ReadexPro",
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          icon,
        ],
      ),
    ),
  );
}