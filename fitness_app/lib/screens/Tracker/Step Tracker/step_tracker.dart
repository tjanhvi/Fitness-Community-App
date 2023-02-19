import 'package:fitness_app/screens/Tracker/Step%20Tracker/pedometerpg.dart';
import 'package:flutter/material.dart';

class StepTracker extends StatefulWidget {
  @override
  StepTrackerState createState() => StepTrackerState();
}

class StepTrackerState extends State<StepTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pedometer(),
    );
  }  
}