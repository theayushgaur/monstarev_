import 'package:flutter/material.dart';

class DotPattern extends StatelessWidget {
  final double width;
  final double height;
  final double cx;
  final double cy;
  final double cr;
  final Color color;
  final Widget child;

  const DotPattern({
    Key? key,
    this.width = 16,
    this.height = 16,
    this.cx = 1,
    this.cy = 1,
    this.cr = 1,
    this.color = const Color(0x66808080),
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DotPatternPainter(
        width: width,
        height: height,
        cx: cx,
        cy: cy,
        cr: cr,
        color: color,
      ),
      child: child,
    );
  }
}

class DotPatternPainter extends CustomPainter {
  final double width;
  final double height;
  final double cx;
  final double cy;
  final double cr;
  final Color color;

  DotPatternPainter({
    required this.width,
    required this.height,
    required this.cx,
    required this.cy,
    required this.cr,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = 0
      ..style = PaintingStyle.fill;

    final double patternWidth = width;
    final double patternHeight = height;
    final double patternCX = cx;
    final double patternCY = cy;
    final double patternCR = cr;

    for (double x = 0; x < size.width; x += patternWidth) {
      for (double y = 0; y < size.height; y += patternHeight) {
        canvas.drawCircle(
          Offset(x + patternCX, y + patternCY),
          patternCR,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(DotPatternPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
