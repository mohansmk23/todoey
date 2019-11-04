import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tiles.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTiles(),
        TaskTiles(),
        TaskTiles(),
      ],
    );
  }
}
