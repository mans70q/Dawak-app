import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class MedicineDetailsAppbar extends StatelessWidget {
  const MedicineDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorManager.primaryBlue, ColorManager.lightBlue],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          stops: const [0.3, 1.0],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 35.h,
            left: 20.w,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Positioned(
            top: 35.h,
            right: 20.w,
            child: IconButton(
              icon: const Icon(Icons.edit, color: Colors.white),
              onPressed: () {
                // Navigate to edit medicine screen
              },
            ),
          ),
          Positioned(
            top: 50.h,
            left: 50.w,
            right: 50.w,
            child: Image.asset(Assets.testMedicineImg),
          ),
        ],
      ),
    );
  }
}
