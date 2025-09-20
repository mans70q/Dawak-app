import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';

class AddTimeButton extends StatelessWidget {
  final List<DateTime> selectedDates;

  const AddTimeButton({super.key, required this.selectedDates});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      width: 80.w,
      child: AppButton(
        text: 'Add Time',
        textStyle: Styles.font12WhiteRegular,
        radius: 5.r,
        onPressed: () async {
          final TimeOfDay? picked = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );
          if (picked != null) {
            selectedDates.add(
              DateTime(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
                picked.hour,
                picked.minute,
              ),
            );
            (context as Element).markNeedsBuild();
          }
        },
      ),
    );
  }
}
