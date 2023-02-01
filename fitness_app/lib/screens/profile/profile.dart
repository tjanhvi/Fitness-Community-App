import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool _darkMode = false;
  
  @override
  Widget build(BuildContext context) {    

    return MaterialApp(
      theme: _darkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(      
        body: SingleChildScrollView(
          child: Container(
              child: Column(
                children: [
                  Container(
                    height: 270,
                    width: double.infinity,
                    color: Colors.purple.shade300,
                    child: Column(
                      children: [
                        const SizedBox(height: 70),
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/profile/profile.png'),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'John Doe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'johndoe1990@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
        
                  SizedBox(height: 20),
        
                  Container(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.apps,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'My Programs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.scale,
                                color: Colors.purple,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  'Mesaurement',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.fitness_center,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'Workout',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.restaurant,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'Diet',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.align_horizontal_left,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'My Fitness Test',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.ads_click,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'Before/After',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.subscriptions,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'Subscriptions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.add_location_alt,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'My Location',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                
                        SizedBox(height: 25),
                
                        InkWell(
                          onTap: () {},
                          child: Container(  
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                const Icon(Icons.settings,
                                color: Colors.purple,),
                                const SizedBox(width: 20),
                                const Text(
                                  'Settings',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),                
                        ),
                      ],
                    ),
                  ),
                
                  SizedBox(height: 30),
        
                  //dark mode system code
                  Container(
                    width: double.infinity,                    
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),                  
                    padding: const EdgeInsets.only(left: 20, right: 20),
    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7),
                        Text(
                          'System',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                
                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Dark Mode',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                              ),
                            ),
                            Switch(
                              value: _darkMode,
                              onChanged: (value) {
                                setState(() {
                                  _darkMode = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
        
                  SizedBox(height: 30),
                
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20), 
                    ),                  
                    padding: const EdgeInsets.only(left: 20, right: 20),
    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7),
                        Text(
                          'My Stats',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                
                        SizedBox(height: 20),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'Workouts',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Calories',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  '1000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Weight',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  '70',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
    
                  SizedBox(height: 30),
                ],  
              ),
            ),
        ),             
      ),
    );
  }
}
