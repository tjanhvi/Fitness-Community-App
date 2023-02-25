// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:fitness_app/screens/Tracker/Weight%20Tracker/NutritionSection.dart';
import 'package:fitness_app/screens/Tracker/Weight%20Tracker/dietScrollWidget.dart';
import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({super.key});

  @override
  State<Nutrition> createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: const Text("Nutrition"), backgroundColor: Colors.purple,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                                  Icons.flatware,
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
                                    "0 of 1550",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 21),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Cal Eaten",
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
                        child: const Icon(Icons.bar_chart),
                        backgroundColor: Colors.purple,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  dietScrollSection("Insight", Icons.bar_chart_outlined),
                  dietScrollSection("Insight", Icons.receipt_long_outlined),
                  dietScrollSection("Insight", Icons.restaurant_menu_outlined),
                  dietScrollSection("Insight", Icons.food_bank),
                ]),
              ),
              SizedBox(
                height: 25,
              ),
              NutritionSection(
                  "Breakfast", "Reminder to have Breakfast at 9:30 AM"),
              NutritionSection(
                  "Morning Snack", "Reminder to have Breakfast at 12:00 PM"),
              NutritionSection(
                  "Lunch", "Reminder to have Breakfast at 3:00 PM"),
              NutritionSection(
                  "Evening Snack", "Reminder to have Breakfast at 7:30 PM"),
              NutritionSection(
                  "Dinner", "Reminder to have Breakfast at 11:19 PM"),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
