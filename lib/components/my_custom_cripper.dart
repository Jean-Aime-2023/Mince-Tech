import 'package:flutter/cupertino.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.8); // Start at the bottom-left corner

    // Define the control points for the cubic Bezier curve to create a wave
    path.cubicTo(
      size.width * 0.35,
      size.height,
      size.width * 0.75,
      size.height * 0.75,
      size.width,
      size.height * 0.8,
    );

    path.lineTo(size.width, 0); // Close the path to the top-right corner

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
