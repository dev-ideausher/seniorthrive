import 'package:flutter/material.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

class backgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.white.withOpacity(0.1);
    canvas.drawCircle(Offset(320.kw, 165.kh), size.width / 2, paint);
  }

  @override
  bool shouldRepaint(backgroundPainter oldDelegate) => true;
}
