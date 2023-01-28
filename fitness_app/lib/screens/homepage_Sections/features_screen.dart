// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(title: const Text("Features")),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 20,
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
                        onPressed: () {},
                        child: const Icon(Icons.add),
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
                      Material(
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
                                height:
                                    MediaQuery.of(context).size.height - 720,
                                width: MediaQuery.of(context).size.width - 310,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 7, color: Colors.grey.shade200)),
                                child: Icon(
                                  Icons.night_shelter_outlined,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 10,
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
                      //box 2 // step count
                      Material(
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
                                height:
                                    MediaQuery.of(context).size.height - 720,
                                width: MediaQuery.of(context).size.width - 310,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 7, color: Colors.grey.shade200)),
                                child: Icon(
                                  Icons.run_circle_outlined,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 10,
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
                      Material(
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
                                    onTap: () {},
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: Text(
                                        "-",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      )),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height -
                                        720,
                                    width:
                                        MediaQuery.of(context).size.width - 310,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            width: 7,
                                            color: Colors.grey.shade200)),
                                    child: Icon(
                                      Icons.water_drop_outlined,
                                      color: Colors.blue,
                                      size: 40,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Drink 7 glasses",
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

                      // row 2 , box -4 Medication track

                      Material(
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
                                height:
                                    MediaQuery.of(context).size.height - 720,
                                width: MediaQuery.of(context).size.width - 310,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 7, color: Colors.grey.shade200)),
                                child: Icon(
                                  Icons.medication_outlined,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 10,
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
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
