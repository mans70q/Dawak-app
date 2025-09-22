import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/validators.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/core/widgets/handle_indicator.dart';
import 'package:spark_flutter_app/features/auth/logic/register%20cubit/register_cubit.dart';
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
                  physics: ClampingScrollPhysics(),
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
                        child: Form(
                          key: context.read<RegisterCubit>().formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HandleIndicator(),
                              SizedBox(height: 20.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "First Name",
                                          style: Styles.font16BlackSemiBold,
                                        ),
                                        SizedBox(height: 10.h),
                                        CustomTextFormField(
                                          hintText: 'Ex: Ahmed',
                                          validator: Validator.validateName,
                                          controller:
                                              context
                                                  .read<RegisterCubit>()
                                                  .firstNameController,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Last Name",
                                          style: Styles.font16BlackSemiBold,
                                        ),
                                        SizedBox(height: 10.h),
                                        CustomTextFormField(
                                          hintText: 'Ex: Hassan',
                                          validator: Validator.validateName,
                                          controller:
                                              context
                                                  .read<RegisterCubit>()
                                                  .lastNameController,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email",
                                    style: Styles.font16BlackSemiBold,
                                  ),
                                  SizedBox(height: 8.h),
                                  CustomTextFormField(
                                    hintText: 'Email',
                                    validator: Validator.validateEmailAddress,
                                    controller:
                                        context
                                            .read<RegisterCubit>()
                                            .emailController,
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Password",
                                    style: Styles.font16BlackSemiBold,
                                  ),
                                  SizedBox(height: 8.h),
                                  CustomTextFormField(
                                    hintText: 'Password',
                                    obscureText: true,
                                    validator: Validator.validatePassword,
                                    controller:
                                        context
                                            .read<RegisterCubit>()
                                            .passwordController,
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Confirm Password",
                                    style: Styles.font16BlackSemiBold,
                                  ),
                                  SizedBox(height: 8.h),
                                  CustomTextFormField(
                                    hintText: 'Confirm Password',
                                    obscureText: true,
                                    validator:
                                        (value) =>
                                            Validator.validateConfirmPassword(
                                              value,
                                              context
                                                  .read<RegisterCubit>()
                                                  .passwordController
                                                  .text,
                                            ),
                                    isFinalField: true,
                                  ),
                                ],
                              ),
                              SizedBox(height: 35.h),
                              SizedBox(
                                width: double.infinity,
                                height: 52.h,
                                child:
                                    BlocConsumer<RegisterCubit, RegisterState>(
                                      listener: (context, state) {
                                        if (state is RegisterSuccess) {
                                          GoRouter.of(
                                            context,
                                          ).go(Routes.mainScreen);
                                        } else if (state is RegisterError) {
                                          showModalBottomSheet(
                                            context: context,
                                            builder:
                                                (context) => Wrap(
                                                  children: [
                                                    ListTile(
                                                      title: Text(
                                                        state
                                                            .errorModel
                                                            .message!,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                          );
                                        }
                                      },
                                      builder: (context, state) {
                                        return state is RegisterLoading
                                            ? Center(
                                              child: CircularProgressIndicator(
                                                color: ColorManager.primaryBlue,
                                              ),
                                            )
                                            : Hero(
                                              tag: 'auth-btn',
                                              child: AppButton(
                                                text: 'Sign Up',
                                                textStyle:
                                                    Styles.font20WhiteSemiBold,
                                                backgroundColor:
                                                    ColorManager.primaryBlue,
                                                onPressed: () {
                                                  if (context
                                                      .read<RegisterCubit>()
                                                      .formKey
                                                      .currentState!
                                                      .validate()) {
                                                    context
                                                        .read<RegisterCubit>()
                                                        .register();
                                                  }
                                                },
                                              ),
                                            );
                                      },
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
