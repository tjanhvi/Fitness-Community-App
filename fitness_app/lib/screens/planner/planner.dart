import 'package:flutter/material.dart';
import 'package:fitness_app/screens/Planner/goal_provider.dart';
import 'package:fitness_app/screens/Planner/view.dart';
import 'package:provider/provider.dart';

class Planner extends StatelessWidget {
  const Planner({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => GoalProvider())],
      child: MaterialApp(
        title: 'Planner',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: const PlannerPage(),
      ),
    );
  }
}
