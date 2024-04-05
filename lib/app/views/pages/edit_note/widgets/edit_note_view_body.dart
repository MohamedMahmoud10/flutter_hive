import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditNoteViewBody extends HookWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final editNoteNameController = useTextEditingController();
    final editNoteContentController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Column(
        children: [
          const CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomTextFormField(
            textEditingController: editNoteNameController,
            textFieldName: 'editNoteName',
            hintText: 'Note Name',
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextFormField(
            textEditingController: editNoteContentController,
            textFieldName: 'editNoteContent',
            maxLines: 5,
            hintText: 'Note Content',
          ),
        ],
      ),
    );
  }
}
