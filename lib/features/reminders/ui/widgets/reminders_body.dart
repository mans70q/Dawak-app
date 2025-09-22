import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/reminders/ui/widgets/reminder_card_list.dart';

class RemindersBody extends StatelessWidget {
  const RemindersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: ButtonsTabBar(
              backgroundColor: ColorManager.primaryBlue,
              unselectedBackgroundColor: ColorManager.lightBlue,
              borderColor: Colors.black,
              labelStyle: Styles.font12WhiteRegular,
              unselectedLabelStyle: Styles.font12WhiteRegular.copyWith(
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 17.w,
                vertical: 5.h,
              ),
              radius: 10.r,
              labelSpacing: 8.w,
              tabs: [
                Tab(text: 'Upcoming'),
                Tab(text: 'Missed'),
                Tab(text: 'Completed'),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 530.h,
            child: TabBarView(
              children: <Widget>[
                ReminderCardList(),
                ReminderCardList(),
                ReminderCardList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
