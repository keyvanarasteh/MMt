import 'package:flutter/material.dart';

class Bow extends CustomPainter {
  final double height;
  final double width;
  final Color color;

  Bow(
    this.height,
    this.width,
    this.color,
  );

  @override
  void paint(Canvas canvas, Size size) {
    var x = size.height / 2;
    var y = size.width / 2;

    var paint = Paint()
      ..color = color
      ..strokeWidth = 15;

    var rect = Rect.fromCenter(center: Offset(x, y), width: width, height: height);
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
