final String tableNotes = 'notes';

class NoteFields {
  static final List<String> values = [
    /// Add all fields
    id, isDone, description
  ];

  static final String id = '_id';
  static final String isDone = 'isImportant';
  static final String description = 'description';
}

class Note {
  final int? id;
  final bool isDone;
  final String description;

  const Note({
    this.id,
    required this.isDone,
    required this.description,
  });

  Note copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Note(
        id: id ?? this.id,
        isDone: isImportant ?? this.isDone,
        description: description ?? this.description,
      );

  static Note fromJson(Map<String, Object?> json) => Note(
        id: json[NoteFields.id] as int?,
        isDone: json[NoteFields.isDone] == 0,
        description: json[NoteFields.description] as String,
      );

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.isDone: isDone ? 1 : 0,
        NoteFields.description: description,
      };
}
