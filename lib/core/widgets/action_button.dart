import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ActionButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Border? border;
  final Widget? icon;

  const ActionButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.backgroundColor,
    required this.textStyle,
    this.border,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.r),
          border: border,
        ),
        child:
            icon != null
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon!,
                    SizedBox(width: 8.w),
                    Text(text, style: textStyle),
                  ],
                )
                : Center(child: Text(text, style: textStyle)),
      ),
    );
  }
}
