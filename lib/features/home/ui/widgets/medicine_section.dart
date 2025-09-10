import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/medicine_item.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/section_header.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';

class MedicineSection extends StatelessWidget {
  const MedicineSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'My Medicines',
          onViewAll: () {
            context.read<MainNavigationCubit>().changeTab(2);
          },
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            separatorBuilder: (_, __) => SizedBox(height: 16.h),
            itemBuilder: (context, index) => const MedicineItem(),
          ),
        ),
      ],
    );
  }
}
