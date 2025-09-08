import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class OtpFields extends StatelessWidget {
  const OtpFields({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      enableActiveFill: true,
      appContext: context,
      keyboardType: TextInputType.number,
      autoFocus: true,
      animationType: AnimationType.fade,
      cursorColor: ColorManager.grey,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 50.h,
        fieldWidth: 50.w,
        activeColor: ColorManager.lightGrey,
        selectedColor: ColorManager.lightGrey,
        inactiveColor: ColorManager.lightGrey,
        activeFillColor: ColorManager.lightGrey,
        inactiveFillColor: ColorManager.lightGrey,
        selectedFillColor: ColorManager.lightGrey,
        disabledColor: ColorManager.lightGrey,
      ),
      onChanged: (value) {},
      onCompleted: (value) {
        // TODO: implement onCompleted
        GoRouter.of(context).go(Routes.loginScreen);
      },
    );
  }
}
