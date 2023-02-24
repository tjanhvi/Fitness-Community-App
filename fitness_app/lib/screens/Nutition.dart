// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      appBar: AppBar(title: const Text("Nutrition")),
      body: Padding(
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
                              height: MediaQuery.of(context).size.height - 720,
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
                                  textAlign: TextAlign.start,
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 70,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.bar_chart_outlined,
                                color: Colors.white,
                              )),
                          Text(
                            "Insight",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 70,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.receipt_long_outlined,
                                color: Colors.white,
                              )),
                          Text(
                            "Diet Plan",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 70,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.restaurant_menu_outlined,
                                color: Colors.white,
                              )),
                          Text(
                            "Recipes",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 70,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.food_bank,
                                color: Colors.white,
                              )),
                          Text(
                            "Saved Meal",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
