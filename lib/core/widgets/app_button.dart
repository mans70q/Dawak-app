import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class AppButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color? textColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double? radius;
  final BorderSide? borderSide;

  const AppButton({
    super.key,
    required this.text,
    required this.textStyle,
    this.textColor,
    this.backgroundColor,
    this.onPressed,
    this.radius,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 15.r),
          side: borderSide ?? BorderSide.none,
        ),
        backgroundColor: backgroundColor ?? ColorManager.primaryBlue,
      ),
      child: Text(text, style: textStyle.copyWith(color: textColor)),
    );
  }
}
