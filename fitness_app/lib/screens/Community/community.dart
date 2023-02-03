import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push (
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: const Text('Community'),
        backgroundColor: Colors.purple.shade400,
      ),
      body: const Center(
        child: Text('Community'),
      ),
    );
  }
}