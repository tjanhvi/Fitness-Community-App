import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_tracker.dart';
import 'package:fitness_app/screens/Tracker/SleepTracker/sleep_tracker.dart';
import 'package:fitness_app/screens/Tracker/Step%20Tracker/step_tracker.dart';
import 'package:fitness_app/screens/Tracker/Weight%20Tracker/weight_tracker.dart';
import 'package:flutter/material.dart';

class Sections extends StatefulWidget {
  const Sections({super.key});

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
  
  int _counter = 7;

  void _incrementCounter() {
    if (_counter < 7) {
      setState(() {
        _counter++;
      });
    }
  }

  void _decrementCounter() {
    if (0 < _counter) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: Drawer(),   
      appBar: AppBar(
        title: Text('Fitness App'),
        backgroundColor: Colors.purple.shade400,
        actions: [          
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,    
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),

                Row(
                  //weight section
                  children: [                    
                    const Text(
                      "Weight",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    height: MediaQuery.of(context).size.height - 685,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height - 720,
                                  width: MediaQuery.of(context).size.width - 310,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          width: 7, color: Colors.grey.shade200)),
                                  child: Icon(
                                    Icons.monitor_weight_outlined,
                                    color: Colors.purple,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "60.0 kg",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 21),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Lose 4.8 kg",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        FloatingActionButton.small(
                          elevation: 0,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WeightTracker()
                                )
                            );                          
                          },
                          child: const Icon(Icons.add),
                          backgroundColor: Colors.purple.shade400,
                        )
                      ],
                    ),
                  ),
                ),
                //weight section end Here
          
                SizedBox(
                  height: 30,
                ),

                //other tracker start here
                Row(
                  children: [
                    const Text(
                      "Other Tracker",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
          
                Column(
                  children: [
                    //box 1 // Track Your sleep Details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                        
                        //box 2 // step count
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StepTracker()));
                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              height: MediaQuery.of(context).size.height - 620,
                              width: MediaQuery.of(context).size.width - 220,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            width: 7, color: Colors.grey.shade200)),
                                    child: Icon(
                                      Icons.run_circle_outlined,
                                      color: Colors.purple,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Track your steps",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Connect now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SleepTracker()));
                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              height: MediaQuery.of(context).size.height - 620,
                              width: MediaQuery.of(context).size.width - 220,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            width: 7, color: Colors.grey.shade200)),
                                    child: Icon(
                                      Icons.night_shelter_outlined,
                                      color: Colors.purple,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Track your sleep",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Sleep at least 6 hr",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
          
                    //2nd row of boxes //  glass of water to drink
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //row - 2 , box 3 glass of water to drink
                        InkWell(
                          onTap: () {                            
                          },                          
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                              height: MediaQuery.of(context).size.height - 620,
                              width: MediaQuery.of(context).size.width - 220,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: _decrementCounter,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                              child: Text(
                                            "−",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                                color: Colors.purple),
                                          )),
                                        ),
                                      ),
                                      Container(
                                        height: 90.0,
                                        width: 90.0,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                                width: 7,
                                                color: Colors.grey.shade200)),
                                        child: Icon(
                                          Icons.water_drop_outlined,
                                          color: Colors.purple,
                                          size: 40,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: _incrementCounter,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                              child: Text(
                                            "+",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                                color: Colors.purple),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Drink ${_counter} glasses",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "of water",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
          
                        // row 2 , box -4 Medication track
          
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MedicineTracker()));
                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              height: MediaQuery.of(context).size.height - 620,
                              width: MediaQuery.of(context).size.width - 220,
                              // height: MediaQuery.of(context).size.width - 280,
                              // width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            width: 7, color: Colors.grey.shade200)),
                                    child: Icon(
                                      Icons.medication_outlined,
                                      color: Colors.purple,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Track Medication",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Set Interval",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                
                SizedBox(
                  height: 40,
                ), 

                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),          
                ),
      
                SizedBox(height: 10.0),
      
                Container(
                  padding: EdgeInsets.all(15.0),  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/all.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "All",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("All");
                        },
                      ),                 
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/blog.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Blog",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Blog");
                        },
                      ),                  
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/hacks.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Hacks",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Hacks");                    
                        },
                      ),                  
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/q&a.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Q&A",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Faq");
                        },
                      ),                  
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/vedio.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Vedio",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Vedio");
                        },
                      ),
                    ],
                  ),
                ),
      
                SizedBox(height: 20.0),
      
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/stories.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Stories",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Best foods to eat during intermittent fasting",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/story1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/q&a.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Q&A",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "How often should I exercise?",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/ques1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/recipe.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Recipe",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "We doesn't love healthy snacks? Try this tea time snacks to boost your iron levels",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/recipe1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/hacks.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Hacks",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "You might be waliking wrong! Yes, you read it right. Here are some tips to walk right",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/hack1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/health.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "HealthHub",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Learn why icorporating a healthy diet is important for your overall health",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/health1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/q&a.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Q&A",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "How long should my workouts be? | What time of day is best to work out? ",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/ques2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/blog.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Blog",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Read this blog to know how to stay fit and healthy.",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/blog1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/recipe.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Recipe",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "It's not just a Khichidi, it's a high-protein, high-fiber, and low-fat meal.",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/recipe2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/hacks.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Hacks",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "If your're moving you're doing it right! Read this tips to keep your body moving.",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/hack2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/health.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "HealthHub",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Feeling down? Try this simple tips to boost your mood.",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/health2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/q&a.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Q&A",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "I’m feeling really sore. What is the best thing to do? ",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/ques3.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/vedio.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Vedio",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "Watch Farhan Akhtar crack the secret to a healthy lifestyle.",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
      
                          SizedBox(height: 10.0),
      
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/ques3.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          
      
                          SizedBox(height: 10.0),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.red,
                                  ),
                                ),                            
                              ),
      
                              SizedBox(width: 10.0),
      
                              Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12.0,),
                              
                            ],                      
                          ),
                        ],
                      ),
                      
                    ],
                  ),                
                ),      
              ],
            ),
          ),
        ),
      ),      

    );
  
  }
}

