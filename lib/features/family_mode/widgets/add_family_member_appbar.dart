import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class AddFamilyMemberAppbar extends StatelessWidget {
  const AddFamilyMemberAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.primaryBlue,
        image: DecorationImage(
          image: AssetImage(Assets.appbarBackground),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            ColorManager.primaryBlue.withAlpha(200),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 40.h),
          Row(
            children: [
              SizedBox(width: 24.w),
              Navigator.of(context).canPop()
                  ? IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  )
                  : const SizedBox(),
              SizedBox(width: 50.w),
              Text('Add Family Member', style: Styles.font20WhiteSemiBold),
            ],
          ),
        ],
      ),
    );
  }
}
