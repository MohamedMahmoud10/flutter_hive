import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesModelBottomSheet extends HookWidget {
  const NotesModelBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController noteNameController = useTextEditingController();
    final TextEditingController noteDetailsController =
        useTextEditingController();
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    return FormBuilder(
      key: formKey,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
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
              ),
              SizedBox(
                height: 35.h,
              ),
              CustomTextFormField(
                maxLines: 5,
                textEditingController: noteDetailsController,
                textFieldName: 'noteDetails',
              ),
              SizedBox(
                height: 30.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(343.w, 45.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                onPressed: () async{
                },
                child: const Text('Add'),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
