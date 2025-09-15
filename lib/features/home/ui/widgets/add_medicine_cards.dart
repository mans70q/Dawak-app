import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/services/image_service.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/features/home/logic/scan%20cubit/scan_cubit.dart';

class AddMedicineCards extends StatelessWidget {
  AddMedicineCards({super.key});
  final ImageService imageService = ImageService();

  void pickImage(BuildContext context) async {
    File? image;
    await showModalBottomSheet(
      context: context,
      builder:
          (_) => Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Snap a Picture"),
                onTap: () async {
                  image = await imageService.pickFromCamera();
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Choose from Gallery"),
                onTap: () async {
                  image = await imageService.pickFromGallery();
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
    );

    if (image != null) {
      if (context.mounted) {
        context.read<ScanCubit>().uploadImage(image!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          begin: AlignmentGeometry.centerLeft,
          end: AlignmentGeometry.centerRight,
          colors: [ColorManager.primaryBlue, Color(0XFFC6E0FF)],
          stops: [.2, 1.0],
        ),
        image: DecorationImage(
          opacity: 0.1,
          image: AssetImage(Assets.cardBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Add Your Medicine', style: Styles.font24WhiteMedium),
                  Text(
                    'Snap a photo of your medicine',
                    style: Styles.font14greyRegular.copyWith(
                      color: Color(0XFFF0F0F0),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    width: 114.w,
                    height: 36.h,
                    child: BlocConsumer<ScanCubit, ScanState>(
                      listener: (context, state) {
                        if (state is ScanSuccess) {
                          GoRouter.of(context).push(
                            Routes.addMedicineScreen,
                            extra: state.scanResponse,
                          );
                        } else if (state is ScanError) {
                          showModalBottomSheet(
                            context: context,
                            builder:
                                (context) => Wrap(
                                  children: [
                                    ListTile(
                                      title: Text(state.errorModel.message!),
                                    ),
                                  ],
                                ),
                          );
                        }
                      },
                      builder: (context, state) {
                        if (state is ScanLoading) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        } else {
                          return AppButton(
                            text: 'Scan',
                            onPressed: () {
                              pickImage(context);
                            },
                            textStyle: Styles.font14BlueSemiBold,
                            backgroundColor: Colors.white,
                            radius: 10.r,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              Image.asset(Assets.cameraLogo),
            ],
          ),
        ],
      ),
    );
  }
}
