import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/core/widgets/handle_indicator.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/auth_switch.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/or_with.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
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
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "First Name",
                                    style: Styles.font16BlackMedium,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "  Last Name",
                                    style: Styles.font16BlackMedium,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    hintText: 'Ex: Ahmed',
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: CustomTextFormField(
                                    hintText: 'Ex: Hassan',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            CustomTextFormField(hintText: 'Email'),
                            SizedBox(height: 20.h),
                            CustomTextFormField(
                              hintText: 'Password',
                              obscureText: true,
                            ),
                            SizedBox(height: 20.h),
                            CustomTextFormField(
                              hintText: 'Confirm Password',
                              obscureText: true,
                            ),
                            SizedBox(height: 20.h),
                            SizedBox(
                              width: double.infinity,
                              height: 52.h,
                              child: AppButton(
                                text: 'Sign Up',
                                textStyle: Styles.font20WhiteSemiBold,
                                backgroundColor: ColorManager.primaryBlue,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 24.h),
                            OrWith(title: "or Sign Up With"),
                            Spacer(),
                            AuthSwitch(
                              text: 'Already have an account?',
                              buttonText: 'Login',
                              onPressed:
                                  () => GoRouter.of(
                                    context,
                                  ).pushReplacement(Routes.loginScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
