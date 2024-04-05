import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_data_base/app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListenerWidget extends StatelessWidget {
  const ListenerWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteLoadedState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: SizedBox(
                width: 100.w,
                height: 75.h,
                child: const Center(
                  child: Text('Note Added Successfully'),
                ),
              ),
            ),
          );
          Future.delayed(
            const Duration(milliseconds: 500),
            () => Navigator.pop(context),
          );
        }
      },
      child: child,
    );
  }
}
