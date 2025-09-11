import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/medicines_appbar.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/medicines_grid_view.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/custom_fab_menu.dart';

class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MedicinesAppbar(),
              SizedBox(height: 24.h),
              const MedicinesGridView(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const CustomFabMenu(),
    );
  }
}
