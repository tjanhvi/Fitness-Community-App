import 'package:flutter/material.dart';
import 'package:fitness_app/screens/Tracker/StepTracker/pedometerpg.dart';

class StepTracker extends StatefulWidget {
  const StepTracker({super.key});

  @override
  State<StepTracker> createState() => StepTrackerState();
}

class StepTrackerState extends State<StepTracker> {  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PedometerPage(),
    );
  }
}