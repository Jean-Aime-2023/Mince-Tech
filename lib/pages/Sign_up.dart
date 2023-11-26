// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/CustomButton.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp_page extends StatelessWidget {
  SignUp_page({Key? key});

  final styleEmail = TextStyle();
  final styleWelcome = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w500,
  );
  final styleSignBlue = TextStyle(fontSize: 15, color: Colors.blue);
  final forgotPassword = TextStyle(color: Colors.blue);
  final continueText = TextStyle(fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          padding: EdgeInsets.only(top: 10.0),
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Column(
                        children: [
                          Text("Welcome Back!",
                              style: GoogleFonts.montserrat(
                                textStyle: styleWelcome,
                              )),
                          Text("Sign in to your account",
                              style: GoogleFonts.montserrat(
                                  textStyle: styleSignBlue)),
                        ],
                      )),
                  SizedBox(height: 30.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email', // Placeholder text
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 14.0, // Adjust the font size as needed
                          color: Colors.grey, // Adjust the color as needed
                          fontFamily:
                              'Montserrat', // Use the desired font family
                          // You can add more styling options here if needed
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    
                    decoration: InputDecoration(
                      hintText: 'Password', // Placeholder text
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 14.0, // Adjust the font size as needed
                          color: Colors.grey, // Adjust the color as needed
                          fontFamily:
                              'Montserrat', // Use the desired font family
                          // You can add more styling options here if needed
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // Align the Row to the end
                    children: [
                      Text(
                        "Forgot Password?",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.montserrat(
                                  textStyle: forgotPassword) // Align the text to the end
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0),
                  CustomButton(
                    title: "Sign In",
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  SizedBox(height: 50.0),
                ],
              ),
              SizedBox(height: 20), // Adding space for better readability
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                  Text(
                    "  Or continue with  ",
                    style: GoogleFonts.montserrat(
                                  textStyle: continueText),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 80), // Adding space for better readability
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildImageWithBorder("assets/images/google_icon.png"),
                      _buildImageWithBorder("assets/images/PIN.png"),
                      _buildImageWithBorder("assets/images/Vector.png"),
                      _buildImageWithBorder(
                          "assets/images/lucide_scan-face.png"),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account? " , style: GoogleFonts.montserrat(
                                  textStyle: continueText),),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.montserrat(
                                  textStyle: forgotPassword),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildImageWithBorder(String imagePath) {
  return Container(
    padding: EdgeInsets.all(15.0), // Add padding to the container
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 1.0), // Add grey border
      borderRadius: BorderRadius.circular(12.0), // Add border radius
    ),
    child: ClipRRect(
      // ClipRRect to apply border radius to the image
      borderRadius: BorderRadius.circular(12.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
        width: 30,
        height: 30,
      ),
    ),
  );
}
