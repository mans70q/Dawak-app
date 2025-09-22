import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class AddMemberButton extends StatelessWidget {
  const AddMemberButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: double.infinity,
      child: AppButton(
        text: "+  Add Member",
        textStyle: Styles.font16WhiteMedium,
        onPressed: () {
          GoRouter.of(context).push(Routes.addFamilyMemberScreen);
        },
      ),
    );
  }
}