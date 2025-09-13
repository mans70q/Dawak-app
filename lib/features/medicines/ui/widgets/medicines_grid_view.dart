import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/logic/profile%20cubit/profile_cubit.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/medicine_grid_item.dart';

class MedicinesGridView extends StatelessWidget {
  const MedicinesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state is ProfileSuccess) {
            final medicines = state.response.data!.medicines;
            return medicines!.isEmpty
                ? Center(
                  child: Container(
                    padding: EdgeInsets.all(50),
                    child: Text(
                      'No medicines yet',
                      style: Styles.font16BlackSemiBold,
                    ),
                  ),
                )
                : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.85,
                    crossAxisCount: 2,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: medicines.length,
                  itemBuilder: (context, index) {
                    return MedicineGridItem(medicine: medicines[index]);
                  },
                );
          } else if (state is ProfileError) {
            return Center(
              child: Text(
                'Error: ${state.errorModel.message}',
                style: Styles.font24BlackSemiBold,
              ),
            );
          } else {
            return SizedBox(
              height: 200.h,
              child: Center(
                child: CircularProgressIndicator(
                  color: ColorManager.primaryBlue,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
