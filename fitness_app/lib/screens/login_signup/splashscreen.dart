import 'package:fitness_app/screens/login_signup/login.dart';
import 'package:flutter/material.dart';


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
    await Future.delayed(const Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        this.context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 69, 12, 104),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 69, 12, 104)),
                  Color.fromARGB(255, 36, 3, 46)
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
          ),
          Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset("assets/images/main_splashscreen/main_splash.png"),
            ),
          )
        ],
      ),
    );
  }
}
