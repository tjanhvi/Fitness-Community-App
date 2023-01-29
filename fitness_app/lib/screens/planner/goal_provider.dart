import 'package:flutter/material.dart';
import 'goal.dart';

class GoalProvider extends ChangeNotifier {
  List<Goal> goals = [
    Goal('Goal 1', DateTime.now(), DateTime.now().add(Duration(hours: 2)),
        const Color.fromARGB(200, 144, 108, 228), false),
    Goal('Goal 2', DateTime.now(), DateTime.now().add(Duration(hours: 2)),
        const Color.fromARGB(200, 144, 108, 228), false),
  ];

  void addGoals() {
    goals.add(
      Goal(
        'Goal added',
        DateTime.now(),
        DateTime.now().add(Duration(hours: 4)),
        const Color.fromARGB(200, 144, 108, 228),
        false,
      ),
    );
    notifyListeners();
  }

  void editGoals(int index) {
    goals[index].eventName = "Goal of index $index edited";
    notifyListeners();
  }
}
