import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/utils/months_list.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class FinishingupScreenDateTextfields extends StatefulWidget {
  const FinishingupScreenDateTextfields({super.key});

  @override
  State<FinishingupScreenDateTextfields> createState() =>
      _FinishingupScreenDateTextfieldsState();
}

class _FinishingupScreenDateTextfieldsState
    extends State<FinishingupScreenDateTextfields> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Day",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: readexproFontName,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "DD",
                  filled: false,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  hintStyle: TextStyle(
                    fontFamily: readexproFontName,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Color(0xFF9696A9),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Color(0xFF9696A9),
                    ),
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
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Month",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: readexproFontName,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              DropdownButtonFormField2(
                hint: const Text(
                  'Month',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: readexproFontName,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                items: items
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontFamily: "Roboto",
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return "Select a month";
                  }
                  return null;
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 4, left: 10),
                  width: 0,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.expand_more_rounded,
                    color: Color(0xFFBEBEBE),
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
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Color(0xFF9696A9),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Color(0xFF9696A9),
                    ),
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
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Year",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: readexproFontName,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "YYYY",
                  filled: false,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  hintStyle: TextStyle(
                    fontFamily: readexproFontName,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Color(0xFF9696A9),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Color(0xFF9696A9),
                    ),
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
