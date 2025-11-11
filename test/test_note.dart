import 'package:notes_app/models/note.dart';

void main() {
  // 测试数据模型
  final note = Note.create(title: '测试标题', content: '测试内容');
  print('Note created: ${note.title}');
  print('Note ID: ${note.id}');
  print('Created at: ${note.formattedDate}');
}