import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class RiskCardList extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  final String riskType;

  const RiskCardList({super.key, required this.items, required this.riskType});

  Color _getTextColor(String risk) {
    switch (risk.toLowerCase()) {
      case 'high':
        return Colors.red;
      case 'medium':
        return Colors.orange;
      case 'low':
        return Colors.green;
      default:
        return Colors.black54;
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredItems =
        riskType.toLowerCase() == "all"
            ? items
            : items.where((item) {
              final risk = (item['risk'] ?? '').toString().toLowerCase();
              return risk == riskType.toLowerCase();
            }).toList();

    if (filteredItems.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Icon(Icons.warning_amber_rounded, color: Colors.amber, size: 70),
            Text('No Warnings', style: Styles.font18BlackSemiBold),
            Text(
              'Great! No dangerous interactions detected.',
              style: Styles.font16GreyRegular,
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: filteredItems.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        final risk = (item['risk'] ?? '') as String;

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
                    color: _getTextColor(risk),
                    size: 31,
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        filteredItems[index]['title'],
                        style: Styles.font18BlackSemiBold,
                      ),
                      SizedBox(height: 12.h),
                      Text(filteredItems[index]['subtitle']),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // TODO: Handle navigate to warning details
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: ColorManager.primaryBlue,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'View Details',
                              style: Styles.font12WhiteRegular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // TODO: Handle dismiss
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: ColorManager.primaryBlue),
                        ),
                        child: Center(
                          child: Text(
                            "Dismiss",
                            style: Styles.font14BlackRegular,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
