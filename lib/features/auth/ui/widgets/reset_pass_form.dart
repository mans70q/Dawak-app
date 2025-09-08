import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/validators.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/core/widgets/handle_indicator.dart';
import 'package:spark_flutter_app/features/auth/ui/widgets/custom_text_form_field.dart';

class ResetPassForm extends StatelessWidget {
  const ResetPassForm({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
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
                        'Password',
                        style: Styles.font16BlackSemiBold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      hintText: '',
                      obscureText: true,
                      validator: Validator.validatePassword,
                    ),
                    SizedBox(height: 20.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: Styles.font16BlackSemiBold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      hintText: '',
                      obscureText: true,
                      validator:
                          (value) => Validator.validateConfirmPassword(
                            value,
                            'originalPassword',
                          ),
                    ), //TODO: use the original password
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: double.infinity,
                      height: 52.h,
                      child: AppButton(
                        text: 'Send Reset Code',
                        textStyle: Styles.font20WhiteSemiBold,
                        backgroundColor: ColorManager.primaryBlue,
                        onPressed: () {
                          // todo send reset code
                          GoRouter.of(context).go(Routes.loginScreen);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
