import 'package:flutter/material.dart';
import 'package:flutter_local_data_base/app/views/pages/edit_note/widgets/index.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNoteViewBody(),
      ),
    );
  }
}
