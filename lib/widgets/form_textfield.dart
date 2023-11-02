import 'package:citadel/utils/font.dart';
import 'package:flutter/material.dart';

Widget formTextField({
  TextEditingController? controller,
  String? Function(String?)? validationFunction,
  required TextInputType textInputType,
  required String hintText,
  Iterable<String>? autofillHints,
  Widget? suffixIcon,
  required bool obscureText,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: TextFormField(
      cursorColor: Colors.white,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      obscureText: obscureText,
      controller: controller,
      validator: validationFunction,
      keyboardType: textInputType,
      autofillHints: autofillHints,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        filled: false,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 24,
        ),
        suffixIcon: suffixIcon,
        hintStyle: const TextStyle(
          fontFamily: readexproFontName,
          color: Colors.white,
          fontSize: 15,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Color(0xFF9696A9),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Color(0xFF9696A9),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.red,
          ),
        ),
      ),
    ),
  );
}
