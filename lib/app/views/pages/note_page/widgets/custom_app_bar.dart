import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         title,
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
        const Spacer(),
        Container(
          height: 47.h,
          width: 45.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Colors.black.withOpacity(0.4),
          ),
          child:  Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}
