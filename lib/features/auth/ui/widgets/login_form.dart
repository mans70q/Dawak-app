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

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email',
                                style: Styles.font16BlackMedium,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            CustomTextFormField(hintText: 'AH365@gmail.com'),
                            SizedBox(height: 20.h),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password',
                                style: Styles.font16BlackMedium,
                              ),
                            ),
                            CustomTextFormField(
                              hintText: '',
                              obscureText: true,
                            ),
                            SizedBox(height: 5.h),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed:
                                    () => GoRouter.of(
                                      context,
                                    ).push(Routes.forgotPasswordScreen),
                                child: Text(
                                  'Forgot Password?',
                                  style: Styles.font12BlueBold,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            SizedBox(
                              width: double.infinity,
                              height: 52.h,
                              child: AppButton(
                                text: 'Login',
                                textStyle: Styles.font20WhiteSemiBold,
                                backgroundColor: ColorManager.primaryBlue,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 24.h),
                            OrWith(title: "or Login With"),
                            Spacer(),
                            AuthSwitch(
                              text: "Don't have an account?",
                              buttonText: "Sign Up",
                              onPressed:
                                  () => GoRouter.of(
                                    context,
                                  ).pushReplacement(Routes.registerScreen),
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
