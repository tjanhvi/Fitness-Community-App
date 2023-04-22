import 'package:flutter/material.dart';

class DiscoverContent extends StatefulWidget {
  final String image;
  final String title;

  DiscoverContent({
    required this.image,
    required this.title,
  });

  @override
  DiscoverContentState createState() => DiscoverContentState();
}

class DiscoverContentState extends State<DiscoverContent> {
  Widget build(BuildContext context) {
    return Column(                      
      children: [
        Text(
          widget.title,
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
              image: AssetImage(widget.image),
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
    );
  }
}