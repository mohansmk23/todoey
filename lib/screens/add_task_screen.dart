import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    var newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0, color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                onChanged: (newValue) {
                  newTaskTitle = newValue;
                  print(newTaskTitle);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  print(newTaskTitle);
                  addTaskCallback(newTaskTitle);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
