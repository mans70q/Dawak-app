import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorManager.lightBlue,
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.h),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: Styles.font20WhiteSemiBold.copyWith(
          color: const Color(0XFF787878),
        ),
      ),
    );
  }
}
