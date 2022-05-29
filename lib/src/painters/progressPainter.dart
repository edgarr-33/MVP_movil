
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';


class ProgressPainter extends CustomPainter {
  ProgressPainter({required this.llenadoBarra});

  double llenadoBarra;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 6
      ..color = ColorsSelect.txtBoSubHe
      ..style = PaintingStyle.stroke;

    Offset offset = Offset(size.width * 0.50, size.height * 0.50);
    final radio = size.height * 0.48;

    canvas.drawCircle(offset, radio, paint);

    final load = Paint()
      ..strokeWidth = 8
      ..color = ColorsSelect.paginatorNext
      ..style = PaintingStyle.stroke;

    double porcentaje = pi * 2 * (llenadoBarra / 100.0);

    var rect = Rect.fromCircle(
      center: offset,
      radius: radio,
    );
    // Offset offset2 = Offset(size.width * 0.50, size.height * 0.50);
    canvas.drawArc(rect, -pi / 2, porcentaje, false, load);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}