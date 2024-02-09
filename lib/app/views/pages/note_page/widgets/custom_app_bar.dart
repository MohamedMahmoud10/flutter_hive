import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Row(
      children: [
        Text(
          'Note App',
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
          child: const Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}
