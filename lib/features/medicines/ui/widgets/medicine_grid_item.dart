import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';

class MedicineGridItem extends StatelessWidget {
  const MedicineGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorManager.lightBlue.withAlpha(178),
        border: Border.all(color: Colors.black54, width: 0.5),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.testMedicineImg,
            height: 65.h,
            width: 65.w,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 12.h),
          Text('Medicine 1', style: Styles.font16BlackSemiBold),
          Text('500mg - 2x/day', style: Styles.font14greyRegular),
          SizedBox(height: 12.h),
          SizedBox(
            width: 120,
            height: 27,
            child: AppButton(
              text: 'View Details',
              textStyle: Styles.font12WhiteRegular,
              radius: 8.r,
            ),
          ),
        ],
      ),
    );
  }
}
