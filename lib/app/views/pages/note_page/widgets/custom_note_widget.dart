import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        color: Colors.yellow.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.sp,
                ),
              ),
            ),
            subtitle: Text(
              'Build your carrer with \n mohamed elsiny',
              style: TextStyle(
                height: 1.2,
                color: Colors.black.withOpacity(0.4),
                fontSize: 16.sp,
              ),
            ),
            trailing: const Icon(
              Icons.delete,
              color: Colors.black,
              size: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'May 21,2022',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.4), fontSize: 12.sp),
            ),
          )
        ],
      ),
    );
  }
}
