import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/search_text_field.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';

class MedicinesAppbar extends StatelessWidget {
  const MedicinesAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(50.r),
                onTap: () {
                  context.read<MainNavigationCubit>().changeTab(0);
                },
                child: Icon(Icons.arrow_back, color: Colors.black, size: 28.sp),
              ),
              Text('Medicines', style: Styles.font24BlackSemiBold),
              SizedBox(width: 28.sp),
            ],
          ),
        ),
        SizedBox(height: 28.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SearchTextField(
            hintText: 'Search medications...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: ColorManager.primaryBlue,
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
