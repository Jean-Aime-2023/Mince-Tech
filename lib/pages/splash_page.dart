// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'leading_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LeadingPage()),
      ),
    );
  }

  final style1 = TextStyle(color: Colors.grey[400], fontSize: 20);
  final style2 = TextStyle(
      color: Colors.lightBlue[800], fontWeight: FontWeight.bold, fontSize: 13);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(55.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 100),
                  margin: EdgeInsets.only(left: 28.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 230.0,
                    width: 230.0,
                  ),
                ),
                SizedBox(height: 35.0),
                CircularProgressIndicator(),
                SizedBox(height: 50.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Powered By",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: style1,
                      ),
                    ),
                    Text(
                      "XY Group",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: style2,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
