import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tiles.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTiles(
            taskTitle: taskdata.tasks[index].name,
            isChecked: taskdata.tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
//              setState(() {
//                Provider.of<TaskData>(context).tasks[index].toggleDone();
//              });
            },
          );
        },
        itemCount: taskdata.taskCount,
      );
    });
  }
}
