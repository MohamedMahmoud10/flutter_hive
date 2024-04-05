import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_local_data_base/app/models/note_models.dart';
import 'package:flutter_local_data_base/core/const/const_strings.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final DateTime currentDate = DateTime.now();

  String get formattedDate => DateFormat().format(currentDate);
  Future<int> addNote({required NoteModels noteModels}) async {
    emit(AddNoteLoadingState());
    final Box noteBox = Hive.box<NoteModels>(ConstStrings.noteModelTableName);
    try {
      // final addDataToBox =
      //     await noteBox.put(ConstStrings.noteModelCacheKey, noteModels);
      final addDataToBox = await noteBox.add(noteModels);
      debugPrint('The Added Data To Box Is $addDataToBox');
      emit(AddNoteLoadedState());
      return addDataToBox;
    } catch (e) {
      debugPrint('The Error For Added Data To Box Is $e');
      emit(
        AddNoteFailureState(
          errorMsg: e.toString(),
        ),
      );
      rethrow;
    }
  }

  void onAddNotePressed({
    required GlobalKey<FormBuilderState> formKey,
  }) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      final Map<String, dynamic> savedValues = formKey.currentState!.value;
      final String noteTitle = savedValues['noteName'];
      final String noteDescription = savedValues['noteDetails'];
      addNote(
        noteModels: NoteModels(
          title: noteTitle,
          subTitle: noteDescription,
          date:formattedDate,
          color: 123456,
        ),
      );
    } else {
      autovalidateMode = AutovalidateMode.onUserInteraction;
      emit(AutoValidationModeState());
    }
  }
}
