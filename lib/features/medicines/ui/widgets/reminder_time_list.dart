import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ReminderTimeList extends StatelessWidget {
  final List<DateTime> selectedDates;

  const ReminderTimeList({super.key, required this.selectedDates});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12.h),
      itemCount: selectedDates.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black54, width: 0.5),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              Text(DateFormat.jm().format(selectedDates[index])),
              const Spacer(),
              InkWell(
                borderRadius: BorderRadius.circular(50.r),
                onTap: () {
                  selectedDates.removeAt(index);
                  (context as Element).markNeedsBuild();
                },
                child: Icon(Icons.close, color: Colors.black, size: 20.sp),
              ),
            ],
          ),
        );
      },
    );
  }
}
