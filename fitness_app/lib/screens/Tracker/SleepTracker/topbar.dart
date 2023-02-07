import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

// class TopBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       child: Container(
//         height: 250.0,
//       ),
//       painter: CurvesPainter(),
//     );
//   }
// }

// class CurvesPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path = Path();
//     Paint paint = Paint();

//     path.lineTo(0, size.height * 0.75);
//     path.quadraticBezierTo(size.width * 0.10, size.height * 0.70,
//         size.width * 0.17, size.height * 0.90);
//     path.quadraticBezierTo(
//         size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
//     path.quadraticBezierTo(size.width * 0.40, size.height * 0.4,
//         size.width * 0.50, size.height * 0.70);
//     path.quadraticBezierTo(size.width * 0.60, size.height * 0.85,
//         size.width * 0.65, size.height * 0.65);
//     path.quadraticBezierTo(
//         size.width * 0.70, size.height * 0.90, size.width, 0);
//     path.close();

//     paint.color = thirdColor;
//     canvas.drawPath(path, paint);

//     path = Path();
//     path.lineTo(0, size.height * 0.5);
//     path.quadraticBezierTo(size.width * 0.10, size.height * 0.80,
//         size.width * 0.15, size.height * 0.60);
//     path.quadraticBezierTo(size.width * 0.20, size.height * 0.45,
//         size.width * 0.27, size.height * 0.60);
//     path.quadraticBezierTo(
//         size.width * 0.45, size.height, size.width * 0.50, size.height * 0.80);
//     path.quadraticBezierTo(size.width * 0.55, size.height * 0.45,
//         size.width * 0.75, size.height * 0.75);
//     path.quadraticBezierTo(
//         size.width * 0.85, size.height * 0.93, size.width, size.height * 0.6);
//     path.lineTo(size.width, 0);
//     path.close();

//     paint.color = secondColor;
//     canvas.drawPath(path, paint);

//     path = Path();
//     path.lineTo(0, size.height * 0.75);
//     path.quadraticBezierTo(size.width * 0.10, size.height * 0.55,
//         size.width * 0.20, size.height * 0.70);
//     path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
//         size.width * 0.40, size.height * 0.75);
//     path.quadraticBezierTo(size.width * 0.52, size.height * 0.50,
//         size.width * 0.65, size.height * 0.70);
//     path.quadraticBezierTo(
//         size.width * 0.75, size.height * 0.85, size.width, size.height * 0.6);
//     path.lineTo(size.width, 0);
//     path.close();

//     paint.color = firstColor;
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return oldDelegate != this;
//   }
// }

class AnimatedGraphics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WaveWidget(
        //isLoop: false,
        config: CustomConfig(
          gradients: [
            [
              Color.fromARGB(248, 98, 28, 228),
              Color.fromARGB(248, 98, 28, 228)
            ],
            [
              Color.fromARGB(248, 168, 64, 248),
              Color.fromARGB(248, 168, 64, 248)
            ],
            [
              Color.fromARGB(248, 188, 82, 240),
              Color.fromARGB(248, 188, 82, 240)
            ],
            [Colors.amber, Colors.deepOrange],
          ],
          // gradientBegin: Alignment.bottomCenter,
          // gradientEnd: Alignment.center,
          durations: [2000, 4000, 6000, 8000],
          heightPercentages: [0.12, 0.29, 0.44, 0.69],
        ),
        size: Size(MediaQuery.of(context).size.width, 180),
      ),
    );
  }
}
