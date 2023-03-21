import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../db/notes_database.dart';
import 'note.dart';


class TaskData extends ChangeNotifier {
  List<Note> _tasks = [];

  UnmodifiableListView<Note> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _addNote(Note(
      description: newTaskTitle,
      isDone: false,
    ));
    refreshNotes();
    notifyListeners();
  }

  void updateTask(Note task) {
    // task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Note task) {
    _tasks.remove(task);
    notifyListeners();
  }

  Future refreshNotes() async {
    this._tasks = await NotesDatabase.instance.readAllNotes();
  }

  Future _addNote(Note note) async {
    await NotesDatabase.instance.create(note);
  }
}
