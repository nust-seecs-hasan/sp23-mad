import './task.dart';

class Plan {
  String name = '';
  final List<Task> tasks = [];
  int get CompleteCount => tasks.where((task) => task.complete).length;

  String get CompletenessMessage =>
      "$CompleteCount tasks out of total of ${tasks.length} done";
}
