import 'package:bloc/bloc.dart';
import 'package:flutter_local_data_base/app/models/note_models.dart';
import 'package:flutter_local_data_base/core/const/const_strings.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'get_note_state.dart';

class GetNoteCubit extends Cubit<GetNoteState> {
  GetNoteCubit() : super(GetNoteInitial());

  void getAllNotes() {
    final Box noteBox = Hive.box<NoteModels>(ConstStrings.noteModelTableName);
    final List<NoteModels> noteModelList =
        noteBox.values.toList() as List<NoteModels>;
    emit(
      GetNoteLoadedState(noteModelList: noteModelList),
    );
  }
}
