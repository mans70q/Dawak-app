import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class OnboardingAppbar extends StatelessWidget {
  final bool showBackButton;
  final VoidCallback? backButtonOnPressed;

  const OnboardingAppbar({
    super.key,
    required this.showBackButton,
    this.backButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          showBackButton
              ? TextButton(
                onPressed: backButtonOnPressed,
                style: TextButton.styleFrom(
                  minimumSize: Size(40.w, 30.h),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
                child: Icon(
                  FontAwesomeIcons.arrowLeftLong,
                  color: ColorManager.primaryBlue,
                  size: 20.sp,
                ),
              )
              : SizedBox.shrink(),
          GestureDetector(
            //TODO: implement skip
            onTap: () {},
            child: Text('Skip', style: Styles.font16WhiteMedium),
          ),
        ],
      ),
    );
  }
}
