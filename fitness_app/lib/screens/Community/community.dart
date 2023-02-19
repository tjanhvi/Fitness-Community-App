import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading : IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.push (
        //       context,
        //       MaterialPageRoute(builder: (context) => HomePage()),
        //     );
        //   },
        // ),
        title: const Text('Community'),
        backgroundColor: Colors.purple.shade400,
      ),
      body: CommunityInfo(),
    );
  }
}

class CommunityInfo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile/profile.png'),
                        fit: BoxFit.fill,
                      ),
                    ),                    
                  ),                  
                  title: const Text('Hendrik Jackson'),
                  subtitle: Text(
                    'Feb 01',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),

                Image.asset('assets/images/homepage/hack2.jpg'),

                SizedBox(height: 5),                

                //like, comment and share icon
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [       
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {

                      },
                    ),                    
                    
                    IconButton(
                      icon: Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                )
                
              ],
            ),
          ),

          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile/profile.png'),
                        fit: BoxFit.fill,
                      ),
                    ),                    
                  ),                  
                  title: const Text('Hendrik Jackson'),
                  subtitle: Text(
                    'Feb 01',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),

                Image.asset('assets/images/homepage/hack2.jpg'),

                SizedBox(height: 10),                

                //like, comment and share icon
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [                    
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {
                        
                      },
                    ),                    
                    
                    IconButton(
                      icon: Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                )
                
              ],
            ),
          ),

        ],
      ), 

    );
  }
}
