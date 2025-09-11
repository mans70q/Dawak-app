import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/features/medicines/ui/widgets/fab_menu_option.dart';

class CustomFabMenu extends StatefulWidget {
  const CustomFabMenu({super.key});

  @override
  State<CustomFabMenu> createState() => _CustomFabMenuState();
}

class _CustomFabMenuState extends State<CustomFabMenu> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomRight,
      children: [
        FloatingActionButton(
          backgroundColor: ColorManager.primaryBlue,
          onPressed: () {
            setState(() => _showMenu = !_showMenu);
          },
          child: Icon(_showMenu ? Icons.close : Icons.add, color: Colors.white),
        ),

        if (_showMenu)
          Positioned(
            bottom: 40,
            right: 40,
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: 240.w,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r),
                    bottomLeft: Radius.circular(15.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(25),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FabMenuOption(
                      svgIcon: Assets.scanEntry,
                      text: "Scan with Camera",
                      onTap: () {
                        setState(() => _showMenu = false);
                      },
                    ),
                    SizedBox(height: 10.h),
                    FabMenuOption(
                      svgIcon: Assets.manualEntry,
                      text: "Manual Entry",
                      onTap: () {
                        setState(() => _showMenu = false);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
