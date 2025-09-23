import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/services/image_service.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/features/home/logic/scan%20cubit/scan_cubit.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/fab_menu_option.dart';

class CustomFabMenu extends StatefulWidget {
  const CustomFabMenu({super.key});

  @override
  State<CustomFabMenu> createState() => _CustomFabMenuState();
}

class _CustomFabMenuState extends State<CustomFabMenu> {
  bool _showMenu = false;
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
                  if (context.mounted) Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Choose from Gallery"),
                onTap: () async {
                  image = await imageService.pickFromGallery();
                  if (context.mounted) Navigator.pop(context);
                },
              ),
            ],
          ),
    );

    if (image != null && context.mounted) {
      context.read<ScanCubit>().uploadImage(image!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (_showMenu)
          Container(
            width: 240.w,
            margin: EdgeInsets.only(bottom: 10.h),
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(25),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocConsumer<ScanCubit, ScanState>(
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
                    return state is ScanLoading
                        ? const Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.primaryBlue,
                          ),
                        )
                        : FabMenuOption(
                          svgIcon: Assets.scanEntry,
                          text: "Scan with Camera",
                          onTap: () {
                            pickImage(context);
                          },
                        );
                  },
                ),
                SizedBox(height: 10.h),
                FabMenuOption(
                  svgIcon: Assets.manualEntry,
                  text: "Manual Entry",
                  onTap: () {
                    //TODO: Add manual entry

                    // GoRouter.of(context).push(Routes.addMedicineScreen);
                  },
                ),
              ],
            ),
          ),
        FloatingActionButton(
          backgroundColor: ColorManager.primaryBlue,
          onPressed: () => setState(() => _showMenu = !_showMenu),
          child: Icon(_showMenu ? Icons.close : Icons.add, color: Colors.white),
        ),
      ],
    );
  }
}
