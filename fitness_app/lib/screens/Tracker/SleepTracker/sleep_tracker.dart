import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:fitness_app/screens/Tracker/SleepTracker/sleep_info.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SleepTracker extends StatefulWidget {
  const SleepTracker({super.key});

  @override
  State<SleepTracker> createState() => SleepTrackerState();
} 

class SleepTrackerState extends State<SleepTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 69, 12, 104),
      body: Stack(
        fit: StackFit.expand,
        children: [ 
          new Image(
            image: const AssetImage("assets/images/tracker/sleep/sleepbg.png"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  
              const SizedBox(height: 100.0),              

              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: const Text(
                  "Good Night",
                  style: TextStyle(
                    color: Color.fromARGB(255, 237, 228, 228),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),

              const SizedBox(height: 60.0),

              //moon maker custom painter            

              Center(
                child: Container(                
                  width: 230,
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/tracker/sleep/moon.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 69, 12, 104),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SleepInfo()),
                    );
                  },
                  child: const Text(
                    "Start Tracking",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
              )
              
            ]
          ),
        ],       
        
      ),
    );    
  }
}

class MoonMaker extends StatelessWidget {
  final double size;

  MoonMaker({required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MoonPainter(),
    );
  }
}

class MoonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.rotate(math.pi / 2);
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0XFF8134AF),
          Color(0XFFDD2A7B),
          Color(0XFFFEDA77),
          Color(0XFFF58529),
        ],
      ).createShader(Rect.fromLTRB(0, 0, size.width, size.height));

    Path path1 = Path()
      ..addOval(Rect.fromCenter(
          center: center, width: size.width, height: size.height));

    Path path2 = Path()
      ..addOval(
        Rect.fromCenter(
          center: Offset(
            center.dx - 10,
            center.dy - 10,
          ),
          width: size.width - 10,
          height: size.height - 10,
        ),
      );
    canvas.drawPath(
      Path.combine(PathOperation.difference, path1, path2),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}