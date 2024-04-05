part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}
class AddNoteLoadingState extends AddNoteState {}
class AddNoteLoadedState extends AddNoteState {}
class AddNoteFailureState extends AddNoteState {
  final String errorMsg;
  AddNoteFailureState({required this.errorMsg});
}
class AutoValidationModeState extends AddNoteState {}

