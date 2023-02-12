import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

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
            [Colors.amber, Colors.amber],
          ],
          durations: [2000, 4000, 6000, 8000],
          heightPercentages: [0.02, 0.20, 0.44, 0.69],
        ),
        size: Size(MediaQuery.of(context).size.width, 240),
      ),
    );
  }
}
