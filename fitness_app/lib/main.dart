import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:fitness_app/screens/login_signup/otp.dart';
import 'package:fitness_app/screens/login_signup/phone.dart';
import 'package:fitness_app/screens/login_signup/splashscreen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Fitness App',
    home: const MyHomePage(title: 'Fitness App'),
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'home': (context) => MyHomePage(title: 'Fitness App'),
    },
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splash(),
    );
  }
}
