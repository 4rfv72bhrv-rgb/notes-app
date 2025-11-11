import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

part 'note.g.dart';

@HiveType(typeId: 0)
class Note {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String content;

  @HiveField(3)
  final DateTime createdAt;

  @HiveField(4)
  DateTime updatedAt;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  });

  Note.create({
    required this.title,
    required this.content,
  }) : id = DateTime.now().millisecondsSinceEpoch.toString(),
       createdAt = DateTime.now(),
       updatedAt = DateTime.now();

  String get formattedDate {
    return DateFormat('yyyy-MM-dd HH:mm').format(updatedAt);
  }

  void updateContent(String newTitle, String newContent) {
    title = newTitle;
    content = newContent;
    updatedAt = DateTime.now();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Note && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}