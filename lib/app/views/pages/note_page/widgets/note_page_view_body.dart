import 'package:flutter/material.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';

class NotePageViewBody extends StatelessWidget {
  const NotePageViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: NotesView(),
          ),
        ],
      ),
    );
  }
}
