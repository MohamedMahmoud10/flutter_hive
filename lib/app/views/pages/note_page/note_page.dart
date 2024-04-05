import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_data_base/app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_local_data_base/app/cubits/get_note_cubit/get_note_cubit.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/note_page_view_body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetNoteCubit>(
      create: (context) => GetNoteCubit()..getAllNotes(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            context: context,
            builder: (context) => BlocProvider<AddNoteCubit>(
              create: (context) => AddNoteCubit(),
              child: const NotesModelBottomSheet(),
            ),
          ),
        ),
        body: const SafeArea(child: NotePageViewBody()),
      ),
    );
  }
}
