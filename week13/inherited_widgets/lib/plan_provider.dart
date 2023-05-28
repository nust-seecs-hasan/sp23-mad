import 'package:flutter/material.dart';
import 'package:model_views/views/plan_screen.dart';
import './models/data_layer.dart';

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
