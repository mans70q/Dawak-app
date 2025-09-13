import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/features/home/data/models/profile_response.dart';

class MedicineGridItem extends StatelessWidget {
  const MedicineGridItem({super.key, required this.medicine});
  final Medicine medicine;

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
          medicine.imageUrl == null
              ? Image.asset(
                Assets.testMedicineImg,
                height: 65.h,
                width: 65.w,
                fit: BoxFit.cover,
              )
              : Image.network(
                medicine.imageUrl!,
                height: 65.h,
                width: 65.w,
                fit: BoxFit.contain,
              ),

          SizedBox(height: 12.h),
          Text(medicine.name!, style: Styles.font16BlackSemiBold),
          Text(
            '${medicine.dosage} - ${medicine.frequency!}',
            style: Styles.font14greyRegular,
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: 120,
            height: 27,
            child: AppButton(
              text: 'View Details',
              textStyle: Styles.font12WhiteRegular,
              radius: 8.r,
              onPressed:
                  () => GoRouter.of(
                    context,
                  ).push(Routes.medicinedetailsScreen, extra: medicine),
            ),
          ),
        ],
      ),
    );
  }
}
