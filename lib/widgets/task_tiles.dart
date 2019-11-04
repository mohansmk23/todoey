import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
  const TaskTiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("todo 1"),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
