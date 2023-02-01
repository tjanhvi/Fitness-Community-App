// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_tracker.dart';
import 'package:flutter/material.dart';

class MedicineSplash extends StatefulWidget {
  const MedicineSplash({super.key});

  @override
  State<MedicineSplash> createState() => _MedicineSplashState();
}

class _MedicineSplashState extends State<MedicineSplash> {

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //     Duration(seconds: 4), () => 
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => MedicineTracker(),
  //       )      
  //     )
  //   );  
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Container(        
        color: Colors.white,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Keep a track of the medicine you are taking and get reminded to take them on time.",
                  style: TextStyle(
                    color: Colors.purple.shade300,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 10.0),

                Image.asset(
                  'assets/images/tracker/medicine/medicineicon.jpg',
                  width: 300.0,
                  height: 300.0,
                ),

                SizedBox(height: 10.0),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MedicineTracker(),
                      )
                    );
                  },
                  child: Text("Get Started"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade300,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        ),
    );
  }
}