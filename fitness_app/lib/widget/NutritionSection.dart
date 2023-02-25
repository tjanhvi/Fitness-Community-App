// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget NutritionSection(String mealType, String mealTime) {
  return Column(
    children: [
      SizedBox(
        height: 25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mealType,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Text("0 of 388 Cal",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500)),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 25,
                width: 25,
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              )
            ],
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        padding: EdgeInsets.all(15.0),
        height: 80,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
            child: Text(mealTime,
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.grey.shade600))),
      ),
    ],
  );
}
