import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class FabMenuOption extends StatelessWidget {
  const FabMenuOption({
    super.key,
    required this.svgIcon,
    required this.text,
    required this.onTap,
  });

  final String svgIcon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.primaryBlue),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgIcon),
            SizedBox(width: 8.w),
            Text(text, style: TextStyle(color: Colors.black, fontSize: 14.sp)),
          ],
        ),
      ),
    );
  }
}
