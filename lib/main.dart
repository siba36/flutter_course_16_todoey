import 'package:flutter/material.dart';
import 'package:flutter_course_16_todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_course_16_todoey/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskData>(
          create: (context) => TaskData(),
        )
      ],
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
