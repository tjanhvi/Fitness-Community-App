import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/screens/Planner/goal_datasource.dart';
import 'package:fitness_app/screens/Planner/goal_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class PlannerPage extends StatefulWidget {
  const PlannerPage({Key? key}) : super(key: key);

  @override
  State<PlannerPage> createState() => _PlannerWidgetState();
}

class _PlannerWidgetState extends State<PlannerPage> {
  CalendarView calendarView = CalendarView.day;
  CalendarController calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoalProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading : IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push (
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: const Text('Planner'),
        //backgroundColor: Colors.purple[800],
        actions: [
          IconButton(
            onPressed: () {
              provider.addGoals();
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              provider.editGoals(0);
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      calendarView = CalendarView.day;
                      calendarController.view = calendarView;
                    });
                  },
                  child: Text("Day")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      calendarView = CalendarView.week;
                      calendarController.view = calendarView;
                    });
                  },
                  child: Text("Week")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      calendarView = CalendarView.month;
                      calendarController.view = calendarView;
                    });
                  },
                  child: Text("Month")),
            ],
          ),
          Expanded(
            child: SfCalendar(
              view: calendarView,
              controller: calendarController,
              showNavigationArrow: true,
              firstDayOfWeek: 1,
              todayHighlightColor: Colors.purple[400],
              selectionDecoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromARGB(255, 161, 122, 168))),
              dataSource: GoalDataSource(provider.goals),
              monthViewSettings: MonthViewSettings(
                appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
                showAgenda: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
