import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class HandleIndicator extends StatelessWidget {
  const HandleIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 108.w,
      decoration: BoxDecoration(
        color: ColorManager.grey,
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
  }
}
