import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double width;  
  final double height; 
  final Color color;
  final double dashWidth;
  final double dashSpacing;
  final Axis direction; 

  const DashedLine({
    super.key,
    this.width = 1, 
    this.height = 1, 
    required this.color,
    required this.dashWidth,
    required this.dashSpacing,
    this.direction = Axis.vertical, 
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _DashedLinePainter(
        color: color,
        dashWidth: dashWidth,
        dashSpacing: dashSpacing,
        direction: direction,
      ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpacing;
  final Axis direction;

  _DashedLinePainter({
    required this.color,
    required this.dashWidth,
    required this.dashSpacing,
    required this.direction,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = direction == Axis.vertical ? size.width : size.height;

    if (direction == Axis.vertical) {
      double startY = 0;
      while (startY < size.height) {
        canvas.drawLine(
          Offset(0, startY),
          Offset(0, startY + dashWidth),
          paint,
        );
        startY += dashWidth + dashSpacing;
      }
    } else {
      double startX = 0;
      while (startX < size.width) {
        canvas.drawLine(
          Offset(startX, 0),
          Offset(startX + dashWidth, 0),
          paint,
        );
        startX += dashWidth + dashSpacing;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}