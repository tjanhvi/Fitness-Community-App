import 'dart:math';

import 'package:fitness_app/screens/features_screen.dart';
import 'package:flutter/material.dart';

class CircleProgressbar extends CustomPainter {
  final strokeCircle = 7.0;
  final curentProgress = 2;
  final maxProgress = 100;

  

  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = strokeCircle
      ..color = Colors.grey.shade200
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2); // center
    double radius = 37; // radius
    canvas.drawCircle(center, radius, circle);

    Paint animationArc = Paint()
      ..strokeWidth = strokeCircle
      ..color = Colors.purple
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double angle = 2 * pi * (curentProgress / 7);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        angle, false, animationArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
