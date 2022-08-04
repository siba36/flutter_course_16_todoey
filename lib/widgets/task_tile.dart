import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_course_16_todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function(bool?) checkBoxCallback;
  final Function() longPressCallback;
  String taskName;

  TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.checkBoxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
