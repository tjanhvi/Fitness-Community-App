import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_tracker.dart';
import 'package:fitness_app/screens/Tracker/SleepTracker/sleep_tracker.dart';
import 'package:fitness_app/screens/Tracker/Step%20Tracker/step_tracker.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TrackerSection extends StatefulWidget {
  const TrackerSection({super.key});

  @override
  State<TrackerSection> createState() => TrackerSectionState();
}

class TrackerSectionState extends State<TrackerSection> {
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
    return Column(
      children: [
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
                            height: 85.0,
                            width: 85.0,
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
                            height: 25,
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
                            height: 85.0,
                            width: 85.0,
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
                            height: 25,
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
                    onTap: () {},
                    child: FlipCard(
                      flipOnTouch: true,
                      front: Material(
                        elevation: 5,
                        borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 5),
                          height:
                              MediaQuery.of(context).size.height - 620,
                          width:
                              MediaQuery.of(context).size.width - 220,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)),
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
                                    height: 85.0,
                                    width: 85.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50),
                                        border: Border.all(
                                            width: 7,
                                            color:
                                                Colors.grey.shade200)),
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
                                height: 25,
                              ),
                              Text(
                                "Drink ${_counter} glasses",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
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
                      back: Container(
                        child: Material(
                          elevation: 5,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            child: Lottie.asset(
                                "assets/images/homepage/done.json"),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 5),
                            height:
                                MediaQuery.of(context).size.height -
                                    620,
                            width:
                                MediaQuery.of(context).size.width -
                                    220,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20)),
                            ),
                          )
                        ),
                      ),
                    )
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
                            height: 85.0,
                            width: 85.0,
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
                            height: 25,
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
      ],
    );
  }
}