// This Class For Curved Widget
import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width * 0.0016667, 0);
    path.lineTo(0, size.height * 0.9980000);
    path.quadraticBezierTo(size.width * 0.1037500, size.height * 0.8750000,
        size.width * 0.2750000, size.height * 0.8740000);
    path.cubicTo(
        size.width * 0.4383333,
        size.height * 0.8730000,
        size.width * 0.5291667,
        size.height * 1.0050000,
        size.width * 0.6883333,
        size.height * 0.9980000);
    path.quadraticBezierTo(size.width * 0.8570833, size.height * 1.0030000,
        size.width, size.height * 0.8580000);
    path.lineTo(size.width * 0.9966667, size.height * 0.0040000);
    path.lineTo(size.width * 0.0016667, 0);
    path.close();
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}