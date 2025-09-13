import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/data/models/profile_response.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/medicine_item.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/section_header.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';

class MedicineSection extends StatelessWidget {
  const MedicineSection({super.key, required this.medicines});
  final List<Medicine> medicines;

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
          child:
              medicines.isEmpty
                  ? Center(
                    child: Container(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        'No medicines yet',
                        style: Styles.font16BlackSemiBold,
                      ),
                    ),
                  )
                  : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: medicines.length,
                    separatorBuilder: (_, __) => SizedBox(height: 16.h),
                    itemBuilder:
                        (context, index) =>
                            MedicineItem(medicine: medicines[index]),
                  ),
        ),
      ],
    );
  }
}
