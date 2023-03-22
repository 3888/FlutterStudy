final String tableTasks = 'tasks';

class TaskFields {
  static final List<String> values = [
    /// Add all fields
    id, isDone, description
  ];

  static final String id = '_id';
  static final String isDone = 'isImportant';
  static final String description = 'description';
}

class Task {
  final int? id;
  final bool isDone;
  final String description;

  const Task({
    this.id,
    required this.isDone,
    required this.description,
  });

  Task copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Task(
        id: id ?? this.id,
        isDone: isImportant ?? this.isDone,
        description: description ?? this.description,
      );

  static Task fromJson(Map<String, Object?> json) => Task(
        id: json[TaskFields.id] as int?,
        isDone: json[TaskFields.isDone] == 0,
        description: json[TaskFields.description] as String,
      );

  Map<String, Object?> toJson() => {
        TaskFields.id: id,
        TaskFields.isDone: isDone ? 1 : 0,
        TaskFields.description: description,
      };
}
