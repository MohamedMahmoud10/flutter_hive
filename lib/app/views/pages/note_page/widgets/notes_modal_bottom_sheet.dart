import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_local_data_base/app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_local_data_base/app/views/pages/note_page/widgets/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesModelBottomSheet extends HookWidget {
  const NotesModelBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return ListenerWidget(
          child: FormBuilder(
            key: formKey,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AbsorbPointer(
                  absorbing: state is AddNoteLoadingState ? true : false,
                  child: Column(
                    children: [
                      const AddNoteForm(),
                      SizedBox(
                        height: 30.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(343.w, 45.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () {
                          context.read<AddNoteCubit>().onAddNotePressed(
                                formKey: formKey,
                              );
                        },
                        child: state is AddNoteLoadingState
                            ? const Center(
                                child: CircularProgressIndicator.adaptive(),
                              )
                            : const Text('Add'),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
