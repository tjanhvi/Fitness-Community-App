import 'package:fitness_app/screens/homepage_Sections/DiscoverContent.dart';
import 'package:fitness_app/screens/homepage_Sections/DiscoverOptions.dart';
import 'package:fitness_app/screens/homepage_Sections/DiscoverTitle.dart';
import 'package:flutter/material.dart';

class DiscoverSection extends StatefulWidget {
  const DiscoverSection({super.key});

  @override
  State<DiscoverSection> createState() => DiscoverSectionState();
}

class DiscoverSectionState extends State<DiscoverSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Discover",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),          
        ),

        SizedBox(height: 10.0),

        // Discover Options
        DiscoverOptions(),

        SizedBox(height: 20.0),

        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              DiscoverTitle(
                textTitle: "Stories",
                image: 'assets/images/homepage/stories.png'
              ),

              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/story1.jpg", 
                title: "Best foods to eat during intermittent fasting", 
              ),

              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Q&A",
                image: 'assets/images/homepage/q&a.png'
              ),

              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/ques1.jpg", 
                title: "How often should I exercise?", 
              ),              

              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Recipe",
                image: 'assets/images/homepage/recipe.png'
              ),
              
              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/recipe1.jpg", 
                title: "We doesn't love healthy snacks? Try this tea time snacks to boost your iron levels", 
              ),              

              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Hacks",
                image: 'assets/images/homepage/hacks.png'
              ),              

              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/hack1.jpg", 
                title: "You might be waliking wrong! Yes, you read it right. Here are some tips to walk right", 
              ),             

              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "HealthHub",
                image: 'assets/images/homepage/health.png'
              ),
              
              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/health1.jpg", 
                title: "Learn why icorporating a healthy diet is important for your overall health", 
              ), 
              
              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Q&A",
                image: 'assets/images/homepage/q&a.png'
              ),  
              
              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/ques2.jpg", 
                title: "How long should my workouts be? | What time of day is best to work out?", 
              ), 
              
              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Blog",
                image: 'assets/images/homepage/blog.png'
              ),              

              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/blog1.jpg", 
                title: "Read this blog to know how to stay fit and healthy.", 
              ), 
              
              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Recipe",
                image: 'assets/images/homepage/recipe.png'
              ),             

              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/recipe2.jpg", 
                title: "It's not just a Khichidi, it's a high-protein, high-fiber, and low-fat meal.", 
              ), 
              
              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Hacks",
                image: 'assets/images/homepage/hacks.png'
              ),
              
              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/hack2.jpg", 
                title: "If your're moving you're doing it right! Read this tips to keep your body moving.", 
              ), 
              
              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "HealthHub",
                image: 'assets/images/homepage/health.png'
              ),
              
              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/health2.jpg", 
                title: "Feeling down? Try this simple tips to boost your mood.", 
              ), 
              
              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Q&A",
                image: 'assets/images/homepage/q&a.png'
              ),
              
              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/ques3.jpg", 
                title: "I'm feeling really sore. What is the best thing to do?", 
              ),               

              SizedBox(height: 20.0),

              DiscoverTitle(
                textTitle: "Vedio",
                image: 'assets/images/homepage/vedio.png'
              ),
              
              SizedBox(height: 10.0),

              DiscoverContent(
                image: "assets/images/homepage/ques3.jpg", 
                title: "Watch Farhan Akhtar crack the secret to a healthy lifestyle.", 
              ),  
            ],
          ),                
        ), 
      ],
    );
  }
}