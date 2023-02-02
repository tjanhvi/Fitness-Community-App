import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Avenir'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double NutriNum = 10;
  double WeightNum = 10;
  bool Nutipressed = false;
  bool weigpressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),

      // appBar: AppBar(
      //   title: const Text(
      //     'Today',
      //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      // backgroundColor: Color(0xfff8f8f8),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Container(
                  margin: EdgeInsets.only(top: 20, right: 40, bottom: 20),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      // image: DecorationImage(
                      //   image: AssetImage('asset/path.png'),
                      //   fit: BoxFi t.contain
                      // )
                      ),
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(20),
                child: Text(
                  "Good Morning ",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              ),
              SizedBox(
                height: 30,
              ),
              //   width: MediaQuery.of(context).size.width * 0.9,
              //   // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(40))),
              //   // child: Row(
              //   //   children: [
              //   //     Icon(
              //   //       Icons.search,
              //   //       size: 30,
              //   //     ),
              //   // SizedBox(
              //   //   width: 20,
              //   // ),
              //   // Expanded(
              //   //     child: TextField(
              //   //   decoration: InputDecoration(
              //   //       border: InputBorder.none,
              //   //       hintText: 'search',
              //   //       hintStyle: TextStyle(
              //   //         fontSize: 20,
              //   //       )),
              //   // ))
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 2,
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            spreadRadius: 1,
                            offset: Offset(0, 10),
                          )
                        ]),
                    child: Row(children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Expanded(

                      //idhr stack use kru ya ese hi thik h//
                      Stack(children: [
                        Column(
                          children: [
                            Container(
                              // width: MediaQuery.of(context).size.width*1,
                              child: Text(
                                "Nutrition",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              margin: EdgeInsets.only(top: 15, bottom: 20),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                // color: Colors.grey[300],
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: SfRadialGauge(
                                axes: [
                                  RadialAxis(
                                    interval: 10,
                                    startAngle: 0,
                                    endAngle: 360,
                                    showTicks: false,
                                    showLabels: false,
                                    axisLineStyle: AxisLineStyle(thickness: 10),
                                    pointers: [
                                      RangePointer(
                                          value: Nutipressed == true
                                              ? NutriNum
                                              : 10,
                                          width: 10,
                                          color: Color(0xFFFFCD60),
                                          enableAnimation: true,
                                          cornerStyle: CornerStyle.bothCurve)
                                    ],
                                    annotations: [
                                      GaugeAnnotation(
                                          horizontalAlignment:
                                              GaugeAlignment.center,
                                          widget: Column(
                                            children: [
                                              Container(
                                                width: 40.00,
                                                height: 40.00,
                                                // color: Colors.red,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 2, 0, 0),
                                                // child: Container(child: Text("kcal")),
                                              )
                                            ],
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                      Container(
                        // color: Colors.black,
                        child: Text(
                          "Eat upto 1,250 cal",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     // setState(() {
                      //     weigpressed = true;
                      //     // });
                      //     setState(() {});
                      //   },
                      // child: Icon(
                      //   Icons.add_circle,
                      //   size: 40,
                      //   color: Colors.purple,
                      // ),
                      // ),
                       FloatingActionButton(
                        backgroundColor: Colors.white,
                        elevation: 0.0,
                        onPressed: (() {
                          setState(() {
                            Nutipressed = true;
                            NutriNum += 5;
                          });
                        }),
                        child: const Icon(
                          Icons.add_circle,
                          size: 40,
                          color: Colors.purple,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                      )
                    ]),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            spreadRadius: 1,
                            offset: Offset(0, 10),
                          )
                        ]),
                    child: Row(children: [
                      Stack(children: [
                        Column(
                          children: [
                            Container(
                              // width: MediaQuery.of(context).size.width*1,
                              child: Text(
                                "Weight",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              margin: EdgeInsets.only(top: 15, bottom: 20),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                // color: Colors.grey[300],
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: SfRadialGauge(
                                axes: [
                                  RadialAxis(
                                    interval: 10,
                                    startAngle: 0,
                                    endAngle: 360,
                                    showTicks: false,
                                    showLabels: false,
                                    axisLineStyle: AxisLineStyle(thickness: 10),
                                    pointers: [
                                      RangePointer(
                                          value: weigpressed == true
                                              ? WeightNum
                                              : 10,
                                          width: 10,
                                          color: Color(0xFFFFCD60),
                                          enableAnimation: true,
                                          cornerStyle: CornerStyle.bothCurve)
                                    ],
                                    annotations: [
                                      GaugeAnnotation(
                                          horizontalAlignment:
                                              GaugeAlignment.center,
                                          widget: Column(
                                            children: [
                                              Container(
                                                width: 40.00,
                                                height: 40.00,
                                                // color: Colors.red,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 2, 0, 0),
                                                // child: Container(child: Text("kcal")),
                                              )
                                            ],
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                      Container(
                        // color: Colors.black,
                        child: const Text.rich(
                          TextSpan(
                              text: "54 ",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'kg',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      // RawMaterialButton(
                      //   onPressed: () {
                      //     weigpressed = true;
                      //   },
                      //   elevation: 0.0,
                      //   // fillColor: Colors.purple,
                      //   child: const Icon(
                      //     Icons.add_circle,
                      //     size: 40,
                      //     color: Colors.purple,
                      //   ),
                      // ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        elevation: 0.0,
                        onPressed: (() {
                          setState(() {
                            weigpressed = true;
                            WeightNum += 5;
                          });
                        }),
                        child: const Icon(
                          Icons.add_circle,
                          size: 40,
                          color: Colors.purple,
                        ),
                      ),
                      // Icon(
                      //   Icons.add_circle,
                      //   size: 40,
                      //   color: Colors.purple,
                      // ),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                      )
                    ]),
                  ),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}

// Widget Contenttopdown() {
//   return Container(
//     width: double.infinity,
//     height: double.infinity,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: 300,
//         ),
//         Container(
//           width: 130,
//           height: 50,
//           color: Colors.red,
//         )
//       ],
//     ),
//   );
// }
