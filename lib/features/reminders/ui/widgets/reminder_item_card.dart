import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';

class ReminderItemCard extends StatelessWidget {
  const ReminderItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: ColorManager.primaryBlue),
      ),
      child: Row(
        children: [
          Container(
            height: 79.h,
            width: 88.w,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Image.asset(Assets.testMedicineImg, fit: BoxFit.contain),
          ),
          SizedBox(width: 4.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text('panadol', style: Styles.font16BlackSemiBold),
              Text('500mg', style: Styles.font14greyRegular),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: ColorManager.primaryBlue,
                    size: 16.sp,
                  ),
                  SizedBox(width: 4.w),
                  Text('10:00 AM', style: Styles.font12BlueBold),
                ],
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 65.w,
            height: 36.h,
            child: AppButton(
              text: 'Taken',
              textStyle: Styles.font12WhiteRegular.copyWith(
                fontWeight: FontWeight.w500,
              ),
              radius: 10.r,
            ),
          ),
          SizedBox(width: 16.w),
          SizedBox(
            width: 65.w,
            height: 36.h,
            child: AppButton(
              text: 'Snooze',
              textStyle: Styles.font12WhiteRegular.copyWith(
                color: ColorManager.primaryBlue,
                fontWeight: FontWeight.w500,
              ),
              backgroundColor: Colors.white,
              borderSide: BorderSide(color: ColorManager.primaryBlue),
              radius: 10.r,
            ),
          ),
        ],
      ),
    );
  }
}
