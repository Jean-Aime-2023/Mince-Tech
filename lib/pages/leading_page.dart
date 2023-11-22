// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LeadingPage extends StatelessWidget {
  const LeadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          child: Container(
            color: Colors.lightBlue[50],
            height: 400.0,
            child: Center(
              child: Column(children: [
                Text("Ship"),
                Image.asset("assets/images/investment.png"),
              ]),
            ),
          ),
        ),
        Column(
          children: [
            Text("Leading Payment Application"),
            Text(
                "More than 100 million users with 1,000 thousands partners and services in the world"),
            Icon(Icons.next_plan),
          ],
        )
      ],
    );
  }
}
