import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/action_button.dart';
import '../../../../core/theming/color_manager.dart';
import '../../../../core/theming/styles.dart';

class WarningItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String risk;
  final VoidCallback? onView;
  final VoidCallback? onDismiss;
  final Color Function(String) getTextColor;

  const WarningItemCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.risk,
    this.onView,
    this.onDismiss,
    required this.getTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.h,
      width: 353.w,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: ColorManager.primaryBlue),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: getTextColor(risk),
                size: 31,
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Styles.font18BlackSemiBold),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: 250.w,
                    child: Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.font14BlackRegular,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ActionButton(
                  onTap: onView,
                  text: 'View Details',
                  backgroundColor: ColorManager.primaryBlue,
                  textStyle: Styles.font12WhiteRegular,
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ActionButton(
                  onTap: onDismiss,
                  text: 'Dismiss',
                  backgroundColor: Colors.white,
                  textStyle: Styles.font14BlackRegular,
                  border: Border.all(color: ColorManager.primaryBlue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
