// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  CustomButton({
    Key? key,
    required this.title,
    required this.color,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyles = TextStyle(fontSize: 18,fontWeight:  FontWeight.w600, color: textColor); // Move inside the build method

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: color,
        ),
        child: Container(
          height: 50,
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(textStyle: buttonStyles),
            ),
          ),
        ),
      ),
    );
  }
}
