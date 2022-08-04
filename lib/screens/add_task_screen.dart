import 'package:flutter/material.dart';
import 'package:flutter_course_16_todoey/models/Task.dart';
import 'package:flutter_course_16_todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskName = '';

    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  newTaskName = value;
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                color: Colors.lightBlueAccent,
                child: Consumer<TaskData>(
                  builder: (context, taskData, child) {
                    return TextButton(
                      onPressed: () {
                        taskData.addTask(
                          Task(name: newTaskName),
                        );
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
