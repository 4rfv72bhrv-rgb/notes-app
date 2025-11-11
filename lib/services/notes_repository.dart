import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:notes_app/models/note.dart';

class NotesRepository {
  static const String _notesBox = 'notes';
  static late Box<Note> _notesBoxInstance;

  static Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(NoteAdapter());
    _notesBoxInstance = await Hive.openBox<Note>(_notesBox);
  }

  static Future<void> addNote(Note note) async {
    await _notesBoxInstance.put(note.id, note);
  }

  static Future<void> updateNote(Note note) async {
    await _notesBoxInstance.put(note.id, note);
  }

  static Future<void> deleteNote(String noteId) async {
    await _notesBoxInstance.delete(noteId);
  }

  static List<Note> getAllNotes() {
    return _notesBoxInstance.values.toList();
  }

  static Note? getNoteById(String noteId) {
    return _notesBoxInstance.get(noteId);
  }

  static List<Note> searchNotes(String query) {
    final allNotes = getAllNotes();
    return allNotes.where((note) {
      return note.title.toLowerCase().contains(query.toLowerCase()) ||
          note.content.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

  static Future<void> close() async {
    await _notesBoxInstance.close();
  }
}