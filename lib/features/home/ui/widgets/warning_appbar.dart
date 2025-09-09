import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/search_text_field.dart';

class WarningAppbar extends StatelessWidget {
  const WarningAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.primaryBlue,
        image: DecorationImage(
          image: AssetImage(Assets.appbarBackground),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            ColorManager.primaryBlue.withAlpha(200),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.h),
          Center(
            child: SizedBox(
              width: 349.w,
              height: 48.h,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Warning", style: Styles.font24WhiteMedium),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.h),
          SizedBox(width: 349.w, height: 48.h, child: SearchTextField()),
        ],
      ),
    );
  }
}
