import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/models/medicine.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({super.key, required this.medicine});
  final Medicine medicine;

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
            child:
                medicine.imageUrl == null
                    ? Image.asset(Assets.testMedicineImg, fit: BoxFit.contain)
                    : Image.network(medicine.imageUrl!, fit: BoxFit.contain),
          ),
          SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(medicine.name!, style: Styles.font18BlackSemiBold),
              Text(
                '${medicine.dosage} - ${medicine.frequency!}',
                style: Styles.font14greyRegular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
