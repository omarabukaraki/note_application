part of 'read_notes_cubit.dart';

@immutable
abstract class ReadNotesState {}

class ReadNotesInitial extends ReadNotesState {}

class ReadNotesSuccess extends ReadNotesState {
  final List<NoteModel> notes;

  ReadNotesSuccess(this.notes);
}
