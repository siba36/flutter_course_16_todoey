import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter_course_16_todoey/models/Task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task t) {
    _tasks.add(t);
    notifyListeners();
  }

  void toggleDone(int taskIndex) {
    _tasks[taskIndex].toggleDone();
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
