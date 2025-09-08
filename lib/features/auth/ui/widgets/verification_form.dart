import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/core/widgets/handle_indicator.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/otp_fields.dart';

class VerificationForm extends StatelessWidget {
  const VerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: double.maxFinite),
        child: IntrinsicHeight(
          child: Padding(
            padding: EdgeInsets.only(
              top: 15.h,
              left: 20.w,
              right: 20.w,
              bottom: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HandleIndicator(),
                SizedBox(height: 28.h),
                OtpFields(),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: AppButton(
                    text: 'continue',
                    textStyle: Styles.font20WhiteSemiBold,
                    backgroundColor: ColorManager.primaryBlue,
                    onPressed: () {
                      // todo send reset code
                      GoRouter.of(context).go(Routes.resetPasswordScreen);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
