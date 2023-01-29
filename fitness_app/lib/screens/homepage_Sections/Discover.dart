import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
        backgroundColor: Colors.purple.shade400,
        actions: [          
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,    
              children: <Widget>[
                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),          
                ),
      
                SizedBox(height: 10.0),
      
                Container(
                  padding: EdgeInsets.all(15.0),  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/all.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "All",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("All");
                        },
                      ),                 
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/blog.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Blog",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Blog");
                        },
                      ),                  
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/hacks.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Hacks",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Hacks");                    
                        },
                      ),                  
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/q&a.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Q&A",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Faq");
                        },
                      ),                  
      
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/homepage/vedio.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Vedio",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),          
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Vedio");
                        },
                      ),
                    ],
                  ),
                ),
      
                SizedBox(height: 20.0),
      
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/stories.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Stories",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Best foods to eat during intermittent fasting",
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
                                image: AssetImage('assets/images/homepage/story1.jpg'),
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
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/q&a.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Q&A",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "How often should I exercise?",
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
                                image: AssetImage('assets/images/homepage/ques1.jpg'),
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
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/recipe.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Recipe",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "We doesn't love healthy snacks? Try this tea time snacks to boost your iron levels",
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
                                image: AssetImage('assets/images/homepage/recipe1.jpg'),
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
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/hacks.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Hacks",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "You might be waliking wrong! Yes, you read it right. Here are some tips to walk right",
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
                                image: AssetImage('assets/images/homepage/hack1.jpg'),
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
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/health.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "HealthHub",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Learn why icorporating a healthy diet is important for your overall health",
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
                                image: AssetImage('assets/images/homepage/health1.jpg'),
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
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/q&a.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Q&A",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "How long should my workouts be? | What time of day is best to work out? ",
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
                                image: AssetImage('assets/images/homepage/ques2.jpg'),
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
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/blog.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Blog",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Read this blog to know how to stay fit and healthy.",
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
                                image: AssetImage('assets/images/homepage/blog1.jpg'),
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
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/recipe.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Recipe",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "It's not just a Khichidi, it's a high-protein, high-fiber, and low-fat meal.",
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
                                image: AssetImage('assets/images/homepage/recipe2.jpg'),
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
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/hacks.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Hacks",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "If your're moving you're doing it right! Read this tips to keep your body moving.",
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
                                image: AssetImage('assets/images/homepage/hack2.jpg'),
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
                      ),
      
                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/health.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "HealthHub",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(                      
                        children: [
                          Text(
                            "Feeling down? Try this simple tips to boost your mood.",
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
                                image: AssetImage('assets/images/homepage/health2.jpg'),
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
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/q&a.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Q&A",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "I’m feeling really sore. What is the best thing to do? ",
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
                                image: AssetImage('assets/images/homepage/ques3.jpg'),
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
                      ),

                      SizedBox(height: 20.0),

                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/homepage/vedio.png'),
                                fit: BoxFit.cover,
                              ),
                              
                            ),
                          ),
                          SizedBox(width: 10.0),
      
                          Text(
                            "Vedio",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),          
                          ),
                        ],
                      ),
      
                      SizedBox(height: 10.0),
      
                      Column(
                        children: [
                          Text(
                            "Watch Farhan Akhtar crack the secret to a healthy lifestyle.",
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
                                image: AssetImage('assets/images/homepage/ques3.jpg'),
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
                      ),
                      
                    ],
                  ),                
                ),      
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}

