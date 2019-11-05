import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  const TaskTiles({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          checkColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback),
    );
  }
}
