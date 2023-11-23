// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/my_custom_cripper.dart';

class intro_page3 extends StatelessWidget {
  intro_page3({super.key});

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
                'assets/images/online-learning.png', // Adjust the fit of the image
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
              "Prestige and Absolute \nSecurity",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                textStyle: style3,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
                "Licensed at banks in the world & secure with \nmulti-tier PCI-DDS international standards",
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
