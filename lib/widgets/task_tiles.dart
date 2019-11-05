import 'package:flutter/material.dart';

class TaskTiles extends StatefulWidget {
  @override
  _TaskTilesState createState() => _TaskTilesState();
}

class _TaskTilesState extends State<TaskTiles> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "todo 1",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: new TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        checkColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: toggleCheckboxState);
  }
}
