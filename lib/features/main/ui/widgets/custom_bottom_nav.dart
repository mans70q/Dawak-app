import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorManager.primaryBlue,
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: ColorManager.primaryBlue,
          selectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
          unselectedItemColor: ColorManager.grey,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SvgPicture.asset(
                  currentIndex == 0 ? Assets.homeFilled : Assets.homeOutlined,
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SvgPicture.asset(
                  currentIndex == 1
                      ? Assets.remindersFilled
                      : Assets.remindersOutlined,
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Reminders',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SvgPicture.asset(
                  currentIndex == 2
                      ? Assets.medicinesFilled
                      : Assets.medicinesOutlined,
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Medicines',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SvgPicture.asset(
                  currentIndex == 3
                      ? Assets.profileFilled
                      : Assets.profileOutlined,
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
