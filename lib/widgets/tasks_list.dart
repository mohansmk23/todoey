import 'package:flutter/material.dart';
import 'package:todoey/task.dart';
import 'package:todoey/widgets/task_tiles.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'buy pizza', isDone: false),
    Task(name: 'buy biryani', isDone: false),
    Task(name: 'buy shawarma', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTiles(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
