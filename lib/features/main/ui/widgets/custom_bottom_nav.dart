import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 5),
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
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          items: [
            _buildNavItem(
              index: 0,
              currentIndex: currentIndex,
              icon: FontAwesomeIcons.house,
              label: "Home",
            ),
            _buildNavItem(
              index: 1,
              currentIndex: currentIndex,
              icon: FontAwesomeIcons.clock,
              label: "Reminders",
            ),
            _buildNavItem(
              index: 2,
              currentIndex: currentIndex,
              icon: FontAwesomeIcons.pills,
              label: "Medicines",
            ),
            _buildNavItem(
              index: 3,
              currentIndex: currentIndex,
              icon: Icons.settings_outlined,
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required int index,
    required int currentIndex,
    required IconData icon,
    required String label,
  }) {
    final bool isSelected = index == currentIndex;

    return BottomNavigationBarItem(
      icon:
          isSelected
              ? Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.5.w,
                  vertical: 6.5.h,
                ),
                decoration: BoxDecoration(
                  color: ColorManager.primaryBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: Colors.white),
              )
              : Icon(icon),
      label: label,
    );
  }
}
