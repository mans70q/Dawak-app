import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/logic/profile%20cubit/profile_cubit.dart';
import 'package:spark_flutter_app/features/home/logic/reminder%20cubit/reminder_cubit.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/home_appbar.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/add_medicine_cards.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/medicine_section.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/reminder_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<ProfileCubit>().getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
                  if (state is ProfileSuccess) {
                    final profile = state.response.data;
                    final medicines = state.response.data!.medicines;
                    context.read<ReminderCubit>().loadRemindersWithMedicines(
                      profile!.reminders!,
                    );
                    return Column(
                      children: [
                        HomeAppbar(
                          firstName: profile.firstName!,
                          lastName: profile.lastName!,
                        ),
                        AddMedicineCards(),
                        SizedBox(height: 20.h),
                        MedicineSection(medicines: medicines!),
                        SizedBox(height: 20.h),
                      ],
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
              ReminderSection(),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
