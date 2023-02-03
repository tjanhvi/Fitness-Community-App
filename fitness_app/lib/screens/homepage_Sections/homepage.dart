import 'package:fitness_app/screens/Community/community.dart';
import 'package:fitness_app/screens/Homepage_Sections/Sections.dart';
import 'package:fitness_app/screens/Planner/planner.dart';
import 'package:fitness_app/screens/Profile/profile.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    const Sections(),    
    const Planner(),
    const Community(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final ScrollController _homeController = ScrollController();  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(     

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day),
            label: 'Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.purple.shade500,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      )

    );
  }  
}