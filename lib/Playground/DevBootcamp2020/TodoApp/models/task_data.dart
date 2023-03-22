import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../db/tasks_database.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    refreshTasksFromDB();
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  Future refreshTasksFromDB() async {
    _tasks = await TodoTasksDatabase.instance.readAllTasks();
  }

  Future addTask(Task task) async {
    await TodoTasksDatabase.instance.create(task);
    refreshTasksFromDB();
  }

  void updateTask(Task task) {
    // task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
