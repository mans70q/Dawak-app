import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class OrWith extends StatelessWidget {
  const OrWith({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                color: ColorManager.grey,
                thickness: 1,
                endIndent: 10,
              ),
            ),
            Text(title, style: TextStyle(color: ColorManager.grey)),
            Expanded(
              child: Divider(
                color: ColorManager.grey,
                thickness: 1,
                indent: 10,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.facebookLogo),
            SizedBox(width: 10.w),
            Image.asset(Assets.googleLogo),
            SizedBox(width: 10.w),
            Image.asset(Assets.appleLogo),
          ],
        ),
      ],
    );
  }
}
