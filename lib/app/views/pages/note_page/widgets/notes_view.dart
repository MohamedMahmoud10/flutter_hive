import 'package:flutter/material.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context,index) => const CustomNoteWidget(),
    );
  }
}
