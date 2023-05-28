import 'package:flutter/material.dart';

import './views/plan_screen.dart';
import 'plan_provider.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanProvider(child: PlanScreen()),
    );
  }
}
