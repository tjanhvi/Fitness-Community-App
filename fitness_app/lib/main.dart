// ignore_for_file: unnecessary_cast, prefer_const_constructors

import 'package:fitness_app/screens/Nutition.dart';
import 'package:fitness_app/screens/features_screen.dart';
import 'package:fitness_app/widget/circle_progressbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Nutrition(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    _animation =
        (Tween<double>(begin: 0.0, end: 7.0).animate(_animationController)
          ..addListener(() {
            setState(() {});
          })) as Animation<double>;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("Progress bar")), body: Center()));
  }
}

// CustomPaint(
//         foregroundPainter: CircleProgressbar(_animation.value),
//         child: Container(
//             height: 80,
//             width: 80,
//             color: Colors.blue,
//             child: Center(
//               child: GestureDetector(
//                 onTap: (() {
//                   _animationController.forward();
//                 }),
//                 child: Text(
//                   "${_animation.value.toInt()}",
//                   style: TextStyle(fontSize: 50),
//                 ),
//               ),
//             )),
//       )



// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
