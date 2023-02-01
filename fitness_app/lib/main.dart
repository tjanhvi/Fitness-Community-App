import 'package:fitness_app/screens/Homepage_Sections/features_screen.dart';
import 'package:fitness_app/screens/Planner/planner.dart';
import 'package:fitness_app/screens/Planner/view.dart';
import 'package:fitness_app/screens/Profile/profile.dart';
import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_splash.dart';
import 'package:flutter/material.dart';

import 'screens/Homepage_Sections/Discover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      home: const MyHomePage(title: 'Fitness App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FeaturesScreen(),
    );
  }
}
