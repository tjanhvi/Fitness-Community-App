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

  int _selectedOption = 1;
  
  @override
  void initState() {
    super.initState();
    _selectedOption = 1; // or whatever the default option should be
  }


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
                          onPressed: () {
                            Navigator.push (
                              context,
                              MaterialPageRoute(builder: (context) => RadioDialog()),
                            );
                          },
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
                          "Diet Suggestions",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        
                        const SizedBox(width: 20),

                        //diet char for the user
                        Container(                          
                          child: Icon(
                            Icons.food_bank,
                            color: Colors.purple,
                            size: 35,
                          ),
                        ), 
                      ],
                    ),

                    const SizedBox(height: 10),

                    const DietChart(),
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

//use of radio button in dialog box
class RadioDialog extends StatefulWidget {
  const RadioDialog({Key? key}) : super(key: key);

  @override
  RadioDialogState createState() => RadioDialogState();
}

class RadioDialogState extends State<RadioDialog> {
  int _selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Goal Settings'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RadioListTile(
            title: Text("Update Goal"),
            value: 1, 
            groupValue: _selectedOption, 
            onChanged: (value){
              setState(() {
                  _selectedOption = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Reset Goal"),
            value: 2, 
            groupValue: _selectedOption, 
            onChanged: (value){
              setState(() {
                  _selectedOption = value!;
              });
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}


//diet char for the user starts
class DietChart extends StatefulWidget {
  const DietChart({Key? key}) : super(key: key);

  @override
  DietChartState createState() => DietChartState();
}

class DietChartState extends State<DietChart> {
  @override
  Widget build(BuildContext context) {
    var dietData;
    return Container(
      child: SfCircularChart(
        series: <CircularSeries>[
          DoughnutSeries<DietData, String>(
            dataSource: dietData,
            xValueMapper: (DietData data, _) => data.diet,
            yValueMapper: (DietData data, _) => data.calories,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              labelPosition: ChartDataLabelPosition.outside,
              connectorLineSettings: ConnectorLineSettings(
                length: '20%',
                width: 1,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DietData {
  DietData(this.diet, this.calories);
  final String diet;
  final double calories;
}

//diet char for the user ends

