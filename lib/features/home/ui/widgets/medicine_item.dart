import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0XFFF7F7F7),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Colors.black54),
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
          SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text('Medicine 1', style: Styles.font18BlackSemiBold),
              Text('500mg - 2x/day', style: Styles.font14greyRegular),
            ],
          ),
        ],
      ),
    );
  }
}
