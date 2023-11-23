// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  CustomButton({Key? key, required this.title, required this.color,required this.textColor, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          height: 60,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 18,color:textColor, fontFamily: 'montserrat'),
            ),
          ),
        ),
      ),
    );
  }
}
