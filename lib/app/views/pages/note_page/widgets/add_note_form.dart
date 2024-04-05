import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNoteForm extends HookWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController noteNameController = useTextEditingController();
    final TextEditingController noteDetailsController =
        useTextEditingController();

    return Column(
      children: [
        const Divider(
          color: Colors.white,
          endIndent: 160,
          indent: 160,
          thickness: 2,
        ),
        SizedBox(
          height: 40.h,
        ),
        CustomTextFormField(
          textEditingController: noteNameController,
          textFieldName: 'noteName',
          hintText: 'Note name',
        ),
        SizedBox(
          height: 35.h,
        ),
        CustomTextFormField(
          maxLines: 5,
          textEditingController: noteDetailsController,
          textFieldName: 'noteDetails',
          hintText: 'Note Content',
        ),
      ],
    );
  }
}
