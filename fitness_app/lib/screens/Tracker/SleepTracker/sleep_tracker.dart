import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:fitness_app/screens/Tracker/SleepTracker/sleep_info.dart';
import 'package:flutter/material.dart';

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
            image: const AssetImage("assets/images/tracker/sleep/sleepbg.jpg"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  
              const SizedBox(height: 40.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),

                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),
                ],            
              ),
              
              const SizedBox(height: 30.0),

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

              const SizedBox(height: 120.0),

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

              const SizedBox(height: 30.0),

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
