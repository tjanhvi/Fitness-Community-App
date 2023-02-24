import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class WeightTracker extends StatefulWidget {
  const WeightTracker({super.key});

  @override
  State<WeightTracker> createState() => WeightTrackerState();
}

class WeightTrackerState extends State<WeightTracker> {

  final List<WeightData> weightData = <WeightData>[
    WeightData(DateTime(2022, 2, 1), 75),
    WeightData(DateTime(2022, 2, 10), 74.5),
    WeightData(DateTime(2022, 2, 20), 73),
    WeightData(DateTime(2022, 3, 1), 72),
    WeightData(DateTime(2022, 3, 10), 72.5),
    WeightData(DateTime(2022, 3, 20), 71),
    WeightData(DateTime(2022, 4, 1), 70.5),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      // appBar: AppBar(
      //   leading : IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.purple),
      //     onPressed: () {
      //       Navigator.push (
      //         context,
      //         MaterialPageRoute(builder: (context) => HomePage()),
      //       );
      //     },
      //   ),
      //   title: const Text(
      //     'Weight Tracker',
      //     style: TextStyle(color: Colors.purple),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.black87),
                          onPressed: () {
                            Navigator.push (
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                        ),
                        const Text(
                          'Weight Tracker',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                          ),
                        ),
                        
                        PopupMenuButton(
                          icon: Icon(Icons.more_vert, color: Colors.black87, size: 30),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text('Change unit to Pounds'),
                            ),
                            PopupMenuItem(
                              child: Text('Weight Reminder'),
                            ),
                            PopupMenuItem(
                              child: Text('Send Feedback'),
                            ),
                            PopupMenuItem(
                              child: Text('Refresh'),
                            ),
                            PopupMenuItem(
                              child: Text('Help'),
                            ),
                          ],
                        ), 
                      ],                  
                    ),
        
                    const SizedBox(height: 20),
        
                    Row(                    
                      children: [
                        const SizedBox(width: 30),
                        Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 7, color: Colors.grey.shade200)),
                          child: Icon(
                            Icons.monitor_weight,
                            color: Colors.purple,
                            size: 35,
                          ),
                        ),
                    
                        const SizedBox(width: 27),
                    
                        Column(
                          children: [
                            Text(
                              "Lose 3 kg",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 weeks remaining",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500),
                            ),
                          ],
                        ),  
                    
                        const SizedBox(width: 75),
                    
                        IconButton(
                          icon: Icon(Icons.edit, color: Colors.purple, size: 25),
                          onPressed: () {},
                        ),  
                    
                        const SizedBox(width: 20),                    
                    
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: SfCartesianChart(
                        plotAreaBorderColor: Colors.transparent,
                        primaryXAxis: DateTimeAxis(
                          majorGridLines: MajorGridLines(width: 0),
                          edgeLabelPlacement: EdgeLabelPlacement.shift,
                          intervalType: DateTimeIntervalType.days,
                        ),
                        primaryYAxis: NumericAxis(
                          majorGridLines: MajorGridLines(width: 0),
                          axisLine: AxisLine(width: 0),
                          labelFormat: '{value}kg',
                        ),
                        series: <ChartSeries>[
                          SplineSeries<WeightData, DateTime>(
                            dataSource: weightData,
                            xValueMapper: (WeightData data, _) => data.date,
                            yValueMapper: (WeightData data, _) => data.weight,
                            color: Colors.purple,
                            markerSettings: MarkerSettings(
                              isVisible: true,
                              color: Colors.white,
                              borderColor: Colors.purple,
                            ),
                            dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              labelAlignment: ChartDataLabelAlignment.top,
                              textStyle: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                width: double.infinity,
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,                 
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 20),

                        Text(
                          "Weight History",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        
                        const SizedBox(width: 20),
                        
                        Row(
                          children: [
                            //weight card
                            Container(
                              height: 75.0,
                              width: 75.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      width: 7, color: Colors.grey.shade200)),
                              child: Icon(
                                Icons.monitor_weight,
                                color: Colors.purple,
                                size: 35,
                              ),
                            ),
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
    );
  }
}

class WeightData {
  WeightData(this.date, this.weight);
  final DateTime date;
  final double weight;
}
