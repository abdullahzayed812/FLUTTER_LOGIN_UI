import 'package:flutter/material.dart';

class AuthPainter extends CustomPainter {
  AuthPainter({required this.gradient, super.repaint});

  final LinearGradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromPoints(Offset.zero, Offset(0, size.height)),
      );

    final path = Path();

    _pathChoses(path, size);

    canvas.drawPath(path, paint);
  }

  void _pathChoses(Path path, Size size) {
    path
      ..moveTo(size.width * -0.0345067, size.height * 0.6583005)
      ..lineTo(size.width * 1.0372800, size.height * 1.0012192)
      ..lineTo(size.width * 1.0394667, size.height * 1.0054064)
      ..lineTo(size.width * -0.0378133, size.height * 0.9998645);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Layer 1

//     Paint paint_fill_0 = Paint()
//       ..color = const Color.fromARGB(255, 255, 255, 255)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.3112500, size.height * 0.4980000);
//     path_0.lineTo(size.width * 0.3125000, size.height * 0.7980000);
//     path_0.lineTo(size.width * 0.8762500, size.height * 0.7960000);

//     canvas.drawPath(path_0, paint_fill_0);

//     // Layer 1

//     Paint paint_stroke_0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_0, paint_stroke_0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
