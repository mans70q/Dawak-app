import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/add_medicine_appbar.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/add_medicine_body.dart';

class AddMedicineScreen extends StatelessWidget {
  const AddMedicineScreen({super.key, required this.scanResponse});
  final ScanResponse scanResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AddMedicineAppbar(),
          Expanded(
            child: Stack(
              children: [
                Container(height: 50.h, color: ColorManager.primaryBlue),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  child: AddMedicineBody(scanResponse: scanResponse),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
