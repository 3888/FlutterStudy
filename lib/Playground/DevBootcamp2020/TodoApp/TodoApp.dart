import 'package:flutter/material.dart';
import 'package:learn_flutter/Playground/DevBootcamp2020/TodoApp/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/task_data.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
