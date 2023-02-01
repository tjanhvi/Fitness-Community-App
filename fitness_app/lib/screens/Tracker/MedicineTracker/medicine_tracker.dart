import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_type.dart';
import 'package:fitness_app/screens/Tracker/MedicineTracker/save_splash.dart';
import 'package:flutter/material.dart';

class MedicineTracker extends StatefulWidget {
  const MedicineTracker({super.key});

  @override
  _MedicineTrackerState createState() => _MedicineTrackerState();
}

class _MedicineTrackerState extends State<MedicineTracker> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  final List<String> healthStatusItems = [
    'Everyday',
    'Specific Days',
  ];

  String? selectedValue;

  DateTime? _startdate;
  DateTime? _enddate;
  DateTime? _time;

  // _dateString() {
  //   if (_date == null) {
  //     return 'Please choose a date.';
  //   } else {
  //     return '${_date!.day}-${_date!.month}-${_date!.year}';
  //   }
  // }


  @override
  Widget build(BuildContext context) {    
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple.shade300),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Medicine Tracker',
          style: TextStyle(
            color: Colors.purple.shade300,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),  
        backgroundColor: Colors.white,        
      ),

      body: Container(                  
        child: SingleChildScrollView(
          child: Column(
            children: [
                      
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left:25.0, right: 25.0, top: 15.0, bottom: 25.0),
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(height: 10.0),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                          hintText: 'Medicine Name',
                          labelText: 'Medicine Name',  
                        ),
                      ),
                        
                      SizedBox(height: 35.0),
                        
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          labelText: 'Unit',
                        ),
                        isExpanded: true,                                         
                        hint: const Text(                        
                          'Select your medicine type',
                          style: TextStyle(fontSize: 16),                     
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        items: healthStatusItems .map((item) =>
                          DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                          .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please mention you health status.';
                          }
                        },
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value.toString();
                          });
                        },
                  
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MedicineType()),
                          );
                        },
                        
                        onSaved: (value) {
                          selectedValue = value.toString();
                        },
                      ), 
                    ],
                  )
                ),
              ),

              SizedBox(height: 20.0),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left:25.0, right: 25.0, top: 15.0, bottom: 25.0),
                child: Form(                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  
                      Text(
                        "Scheduler",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),                     
          
                      SizedBox(height: 15.0),
          
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          labelText: 'Frequency of Dose',
                        ),
                        isExpanded: true,                     
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        items: healthStatusItems .map((item) =>
                          DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                          .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please mention your dose frequency.';
                          }
                        },
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value.toString();
                          });
                        },                        
                        
                        onSaved: (value) {
                          selectedValue = value.toString();
                        },
                      ), 
                    ],
                  )
                ),
              ),

              SizedBox(height: 20.0),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left:25.0, right: 25.0, top: 15.0, bottom: 25.0),
                child: Form(                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Text(
                        "Reminder",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(height: 20.0),

                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [                             
                              Text(
                                "Start Date",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),

                              InkWell(
                                onTap: () async {

                                  final result = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2010),
                                    lastDate: DateTime(2025),
                                  );
                                  if (result != null) {
                                    setState(() {
                                      _startdate = result;
                                    });
                                  }  
                                },

                                child: Text(
                                  _startdate == null ? 'SELECT DATE' : '${_startdate!.day}-${_startdate!.month}-${_startdate!.year}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple.shade400,
                                  ),
                                ),  
                              ),   
                                  
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 30.0),

                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [                             
                              Text(
                                "End Date",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),

                              InkWell(
                                onTap: () async {

                                  final result = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2010),
                                    lastDate: DateTime(2025),
                                  );
                                  if (result != null) {
                                    setState(() {
                                      _enddate = result;
                                    });
                                  }  
                                },

                                child: Text(
                                  _enddate == null ? 'SELECT DATE' : '${_enddate!.day}-${_enddate!.month}-${_enddate!.year}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple.shade400,
                                  ),
                                ),  
                              ), 

                            ],
                          ),
                        ],
                      ),

                    ],
                  )
                ),
              ),

              SizedBox(height: 25.0,),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left:25.0, right: 25.0, top: 15.0, bottom: 25.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),

                      Text(
                        "Set time for Dose",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                        
                      SizedBox(height: 25.0),
                        
                      InkWell(
                        onTap: () async {
                          final result = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (result != null) {
                            setState(() {
                              _time = result as DateTime?;
                            });
                          }
                        },

                        child: Text(
                          _time == null ? '+ Add a dose' : '$_time',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade400,
                          ),
                        ),
                      ),                        
                    ],
                  )
                ),
              ),  
                          ],
          ),
        ),        
      ), 

      persistentFooterButtons: [
        Container(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            onPressed: () {  
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SaveSplash()),
              );  
            },
            child: Text(
              'Save',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple.shade400,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
          ),
        ),
      ],

    );
  }
}