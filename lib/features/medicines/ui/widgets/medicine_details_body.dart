import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/models/medicine.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class MedicineDetailsBody extends StatelessWidget {
  const MedicineDetailsBody({super.key, required this.medicine});
  final Medicine medicine;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${medicine.name} ${medicine.dosage}',
              style: Styles.font24BlackSemiBold,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Paracetamol',
              style: Styles.font12WhiteRegular.copyWith(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.r),
              height: 165.h,
              decoration: BoxDecoration(
                color: ColorManager.lightBlue.withAlpha(178),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          color: ColorManager.lightBlue,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Icon(
                          Icons.access_time,
                          color: ColorManager.primaryBlue,
                          size: 20.r,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Text('Schedule', style: Styles.font18BlackSemiBold),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Next Dose', style: Styles.font14BlackRegular),
                      Text(
                        '2:00 PM',
                        style: Styles.font14BlueSemiBold.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Last taken', style: Styles.font14BlackRegular),
                      Text(
                        '10:00 AM',
                        style: Styles.font14BlueSemiBold.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  // Indicator Bar
                  Stack(
                    children: [
                      // Background bar (white)
                      Container(
                        height: 10.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      // Progress bar (blue)
                      Container(
                        height: 10.h,
                        width:
                            MediaQuery.of(context).size.width *
                            0.6, // 60% progress
                        decoration: BoxDecoration(
                          color: ColorManager.primaryBlue,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text('Drug Interaction', style: Styles.font18BlackSemiBold),
            SizedBox(height: 12.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.r),
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: Colors.red, width: 1.5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.warning_amber_outlined,
                        color: Colors.red,
                        size: 24.r,
                      ),
                      SizedBox(width: 12.w),
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          'Avoid with Warfarin – may increase bleeding risk.',
                          style: Styles.font14BlackRegular.copyWith(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.warning_amber_outlined,
                        color: Colors.red,
                        size: 24.r,
                      ),
                      SizedBox(width: 12.w),

                      SizedBox(
                        width: 250.w,
                        child: Text(
                          'Caution with Methotrexate – may increase toxicity.',
                          style: Styles.font14BlackRegular.copyWith(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
