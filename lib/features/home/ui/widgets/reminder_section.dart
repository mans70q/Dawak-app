import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/data/models/profile_response.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/reminder_item.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/section_header.dart';

class ReminderSection extends StatelessWidget {
  const ReminderSection({super.key, required this.reminders});
  final List<Reminder> reminders;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: "Today's Reminder",
          onViewAll: () {
            // TODO: implement navigation
          },
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:
              reminders.isEmpty
                  ? Center(
                    child: Container(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        'No reminders yet',
                        style: Styles.font16BlackSemiBold,
                      ),
                    ),
                  )
                  : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: reminders.length,
                    separatorBuilder: (_, __) => SizedBox(height: 12.h),
                    itemBuilder:
                        (context, index) =>
                            ReminderItem(reminder: reminders[index]),
                  ),
        ),
      ],
    );
  }
}
