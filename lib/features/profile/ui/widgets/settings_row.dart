import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class SettingsRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? color;
  final VoidCallback? onPressed;

  const SettingsRow({
    super.key,
    required this.icon,
    required this.title,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final Color colorValue = color ?? const Color(0xFF1F1F1F);

    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Icon(icon, color: colorValue, size: 24.r),
          SizedBox(width: 8.w),
          Text(
            title,
            style: Styles.font16GreyRegular.copyWith(color: colorValue),
          ),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, color: colorValue, size: 16.r),
        ],
      ),
    );
  }
}
