import 'package:flutter/material.dart';

import '../../main.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        this.context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 69, 12, 104),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 69, 12, 104)),
                  Color.fromARGB(255, 36, 3, 46)
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/appicon.png"),
              width: 300,
              height: 300,
            ),
          )
        ],
      ),
    );
  }
}
