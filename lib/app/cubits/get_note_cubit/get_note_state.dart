part of 'get_note_cubit.dart';

@immutable
abstract class GetNoteState {}

class GetNoteInitial extends GetNoteState {}

class GetNoteLoadedState extends GetNoteState {
  final List<NoteModels> noteModelList;

  GetNoteLoadedState({required this.noteModelList});
}
