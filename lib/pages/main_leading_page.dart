// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/intro_pages/intro_page1.dart';
import 'package:flutter_application_1/pages/intro_pages/intro_page2.dart';
import 'package:flutter_application_1/pages/intro_pages/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_pages/final_intro_page.dart';

class LeadingPage extends StatefulWidget {
  const LeadingPage({super.key});

  @override
  State<LeadingPage> createState() => _LeadingPageState();
}

class _LeadingPageState extends State<LeadingPage> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              intro_page1(),
              intro_page2(),
              intro_page3(),
            ],
          ),

          Container(
            alignment: Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text("Skip"),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                GestureDetector(
                  onTap: () {
                    if (onLastPage) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return final_intro_page();
                        }),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: Text(onLastPage ? "Done" : "Next"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
