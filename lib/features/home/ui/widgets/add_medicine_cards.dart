import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';

class AddMedicineCards extends StatelessWidget {
  const AddMedicineCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          begin: AlignmentGeometry.centerLeft,
          end: AlignmentGeometry.centerRight,
          colors: [ColorManager.primaryBlue, Color(0XFFC6E0FF)],
          stops: [.2, 1.0],
        ),
        image: DecorationImage(
          opacity: 0.1,
          image: AssetImage(Assets.cardBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Add Your Medicine', style: Styles.font24WhiteMedium),
                  Text(
                    'Snap a photo of your medicine',
                    style: Styles.font14greyRegular.copyWith(
                      color: Color(0XFFF0F0F0),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    width: 114.w,
                    height: 36.h,
                    child: AppButton(
                      text: 'Scan',
                      textStyle: Styles.font14BlueSemiBold,
                      backgroundColor: Colors.white,
                      radius: 10.r,
                    ),
                  ),
                ],
              ),
              Image.asset(Assets.cameraLogo),
            ],
          ),
          SizedBox(height: 8.h),
          SmoothPageIndicator(
            controller: PageController(),
            count: 2,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.white,
              dotHeight: 8.h,
              dotWidth: 8.w,
            ),
          ),
        ],
      ),
    );
  }
}
