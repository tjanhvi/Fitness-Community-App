import 'package:flutter/material.dart';

class DiscoverTitle extends StatefulWidget {
  final String textTitle;
  final String image;

  DiscoverTitle({required this.textTitle, required this.image});

  @override
  DiscoverTitleState createState() => DiscoverTitleState();

}

class DiscoverTitleState extends State<DiscoverTitle> {
  
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            ),
            
          ),
        ),
        SizedBox(width: 10.0),

        Text(
          widget.textTitle,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),          
        ),
      ],
    );
  }
}