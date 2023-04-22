import 'package:fitness_app/screens/Tracker/Weight%20Tracker/Nutition.dart';
import 'package:flutter/material.dart';

class NutriSection extends StatefulWidget {
  const NutriSection({super.key});

  @override
  State<NutriSection> createState() => NutriSectionState();
}

class NutriSectionState extends State<NutriSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15.0),
          child: Row(                  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nutrition",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 22),
              ),
              Icon(Icons.info_rounded)
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        Stack(children: [
          Container(
            padding: EdgeInsets.all(15.0),
            height: 170,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.alarm_on),
                Text("Create Your Diet & Workout Plan"),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            height: 120,
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
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 7, color: Colors.grey.shade200)),
                          child: Icon(
                            Icons.flatware,
                            color: Colors.orange,
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "Eat upto 1,250 Cal",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 21),
                            ),                                    
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push (
                      context,
                      MaterialPageRoute(builder: (context) => const Nutrition()),
                    );
                  },
                  icon: Icon(Icons.add),
                  color: Colors.orange,
                )
              ],
            ),
          ),
        ]),
      ],
    );
  }
}