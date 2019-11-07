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
          return GestureDetector(
            onLongPress: () => taskdata.deleteTask(index),
            child: TaskTiles(
              taskTitle: taskdata.tasks[index].name,
              isChecked: taskdata.tasks[index].isDone,
              checkboxCallback: (bool checkboxState) {
                taskdata.updateTask(taskdata.tasks[index]);
              },
            ),
          );
        },
        itemCount: taskdata.taskCount,
      );
    });
  }
}
