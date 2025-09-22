import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/models/reminder.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/reminder_item.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/section_header.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';

class ReminderSection extends StatelessWidget {
  const ReminderSection({super.key, required this.reminders});
  final List<Reminder> reminders;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: "Today's Reminders",
          onViewAll: () {
            context.read<MainNavigationCubit>().changeTab(1);
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
                    itemCount: reminders.take(3).length,
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
