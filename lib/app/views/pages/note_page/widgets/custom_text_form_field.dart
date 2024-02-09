import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.textEditingController,
    required this.textFieldName,
     this.maxLines=1,
  }) : super(key: key);
  final TextEditingController textEditingController;
  final String textFieldName;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      maxLines: maxLines,
      controller: textEditingController,
      name: textFieldName,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.blue,
              ))),
    );
  }
}
