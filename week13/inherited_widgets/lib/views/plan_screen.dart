import '../models/data_layer.dart';
import 'package:model_views/plan_provider.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  //final plan = Plan();

  @override
  Widget build(BuildContext context) {
    final plan = PlanProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Super Plan')),
      body: Column(children: <Widget>[
        Expanded(child: _buildList()),
        SafeArea(child: Text(plan!.CompletenessMessage))
      ]),
      floatingActionButton: _buildAddTaskButton(),
    );
  }

  Widget _buildAddTaskButton() {
    final plan = PlanProvider.of(context);
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan!.tasks.add(Task());
        });
      },
    );
  }

  Widget _buildList() {
    final plan = PlanProvider.of(context);
    return ListView.builder(
      itemCount: plan!.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index]),
    );
  }

  Widget _buildTaskTile(Task task) {
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (bool? selected) {
            setState(() {
              task.complete = selected!;
            });
          }),
      title: TextField(
        /* The look and feel over and above the basic UI is done through the decoration parameter 
       decoration: InputDecoration(
            hintText: "Enter Task",
            labelText: "Task",
            border: OutlineInputBorder()
            ),*/
        onChanged: (text) {
          setState(() {
            task.description = text;
          });
        },
      ),
    );
  }
}
