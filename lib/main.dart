import 'package:flutter/material.dart';
import 'package:notes_app/services/notes_repository.dart';
import 'package:notes_app/ui/notes_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotesRepository.init();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '笔记应用',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NotesListPage(),
    );
  }
}