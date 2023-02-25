import 'package:flutter/material.dart';

Widget dietScrollSection(String title, IconData icon) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
    child: Material(
      elevation: 3,
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
                  icon,
                  color: Colors.white,
                )),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 18),
            )
          ],
        ),
      ),
    ),
  );
}
