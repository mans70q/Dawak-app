import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/widgets/auth_appbar.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/forgot_pass_form.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AuthAppbar(
            title: 'Forgot Password',
            subtitle:
                "Enter your email or phone number to receive a verification code",
          ),
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
                  child: ForgotPassForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
