import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/home_appbar.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/add_medicine_cards.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/medicine_section.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/reminder_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeAppbar(),
              const AddMedicineCards(),
              SizedBox(height: 20.h),
              const MedicineSection(),
              SizedBox(height: 20.h),
              const ReminderSection(),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
