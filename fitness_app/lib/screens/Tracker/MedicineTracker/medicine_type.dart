import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_tracker.dart';
import 'package:flutter/material.dart';

class MedicineType extends StatefulWidget {
  const MedicineType({super.key});

  @override
  State<MedicineType> createState() => _MedicineTypeState();
}

class _MedicineTypeState extends State<MedicineType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple.shade300),
          onPressed: () {   
            Navigator.pop(context);
          },
        ),
        title: Text('Unit',
          style: TextStyle(
            color: Colors.purple.shade300,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),  
        backgroundColor: Colors.white, 
      ),
      body: Container(
        padding: EdgeInsets.only(left:10.0, top: 10.0, right: 20.0, bottom: 10.0),
        child: Column(
          children: [
            SizedBox(height: 20),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicineTracker()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/tablet.png",
                        width: 40,
                        height: 40, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Tablet',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),    

                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),            
                ],
              ),
            ),
    
            SizedBox(height: 35),
    
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/capsule.png",
                        width: 30,
                        height: 30, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Capsule',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
            
                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),
                ],
              ),
            ),
    
            SizedBox(height: 35),
    
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/drop.png",
                        width: 30,
                        height: 30, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Drop',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
            
                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),
                ],
              ),
            ),
    
            SizedBox(height: 35),
    
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/injection.png",
                        width: 30,
                        height: 30, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Injection',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
            
                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),
                ],
              ),
            ),
    
            SizedBox(height: 35),
    
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/puff.png",
                        width: 30,
                        height: 30, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Puff',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
            
                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),
                ],
              ),
            ),
    
            SizedBox(height: 35),
    
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/spray.png",
                        width: 35,
                        height: 35, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Spray',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
            
                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),
                ],
              ),
            ),
    
            SizedBox(height: 35),
    
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/teaspoon.png",
                        width: 35,
                        height: 35, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Teaspoon',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
            
                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),
                ],
              ),
            ),
    
            SizedBox(height: 35),
    
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/images/tracker/medicine/tablespoon.png",
                        width: 30,
                        height: 30, 
                      ),
                      SizedBox(width: 20),
                      const Text(
                        'Tablespoon',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
            
                  Icon(Icons.arrow_forward_ios, color: Colors.purple.shade500, size: 18),
                ],
              ),
            ),    
            
          ],
        ),
      ),
    );
  }
}