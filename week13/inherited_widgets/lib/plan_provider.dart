import 'package:flutter/material.dart';

import 'models/plan.dart';
import 'views/plan_screen.dart';

class PlanProvider extends InheritedWidget {
  final _plan = Plan();
  PlanProvider({super.key, required PlanScreen child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static Plan? of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider?._plan;
  }
}
