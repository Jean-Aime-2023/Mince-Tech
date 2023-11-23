// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/my_custom_cripper.dart';

class intro_page1 extends StatelessWidget {
  intro_page1({Key? key});

  final style3 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
  );
  final style4 = TextStyle(color: Colors.grey[600], fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 450.0,
          width: 900.0,
          child: ClipPath(
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Set the background color
              ),
              child: Image.asset(
                'assets/images/investment.png', // Adjust the fit of the image
              ),
            ),
            clipper: MyCustomClipper(),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Leading Payment \nApplication",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                textStyle: style3,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
                "More than 100 million users with 1,000 thousands \npartnres and services in the world",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: style4,
                )),
          ],
        )
      ],
    );
  }
}
