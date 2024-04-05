import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_data_base/app/cubits/get_note_cubit/get_note_cubit.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNoteCubit, GetNoteState>(
      builder: (context, state) {
        if (state is GetNoteLoadedState) {
          return ListView.builder(
            itemCount: state.noteModelList.length,
            itemBuilder: (context, index) =>
                CustomNoteWidget(noteModels: state.noteModelList[index],),
          );
        } else {
          return Container(color: Colors.red, width: 200, height: 200,);
        }
      },
    );
  }
}
