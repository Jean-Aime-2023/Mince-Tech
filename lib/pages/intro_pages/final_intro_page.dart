// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/CustomButton.dart';
import 'package:flutter_application_1/pages/Get_started.dart';
import 'package:flutter_application_1/pages/Sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class final_intro_page extends StatelessWidget {
  final_intro_page({Key? key});

  final style3 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
  );
  final style4 = TextStyle(color: Colors.grey[600], fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/business.png"),
            Column(
              children: [
                Text(
                  "Manage your money \nwisely",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    textStyle: style3,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                    "Track your money flows, balance, and \neveryday transactions on the go.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: style4,
                    )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  title: 'Get Started',
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    // Navigate to the Get Started page when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Getstarted_page()),
                    );
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                CustomButton(
                  title: 'Sign Up',
                  color: Color.fromARGB(255, 168, 205, 235),
                  textColor: Colors.blueAccent,
                  onPressed: () {
                    // Navigate to the Get Started page when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp_page()),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
