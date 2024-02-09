import 'package:flutter/material.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/note_page_view_body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => showModalBottomSheet(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          context: context,
          builder: (context) => const NotesModelBottomSheet(),
        ),
      ),
      body: const SafeArea(child: NotePageViewBody()),
    );
  }
}
