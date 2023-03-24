import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../db/tasks_database.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  Future refreshTasksFromDB() async {
    final dataList = await TodoTasksDatabase.instance.readAllTasks();
    _tasks = dataList;
    notifyListeners();
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
