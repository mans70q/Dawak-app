import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/add_family_member_appbar.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/add_family_member_body.dart';

class AddFamilyMemberScreen extends StatelessWidget {
  const AddFamilyMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AddFamilyMemberAppbar(),
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
                  child: const AddFamilyMemberBody(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
