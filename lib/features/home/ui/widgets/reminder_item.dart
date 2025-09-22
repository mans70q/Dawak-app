import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:spark_flutter_app/core/models/reminder.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';

class ReminderItem extends StatelessWidget {
  const ReminderItem({super.key, required this.reminder});
  final Reminder reminder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorManager.lightBlue,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              SizedBox(
                width: 150.w,
                child: Text(
                  reminder.medicine!.name!,
                  style: Styles.font18BlackSemiBold,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                DateFormat.jm().format(reminder.nextAt!),
                style: Styles.font14greyRegular,
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 65.w,
            height: 36.h,
            child: AppButton(
              text: 'Taken',
              textStyle: Styles.font14greyRegular.copyWith(color: Colors.white),
              radius: 10.r,
            ),
          ),
          SizedBox(width: 16.w),
          SizedBox(
            width: 65.w,
            height: 36.h,
            child: AppButton(
              text: 'Missed',
              textStyle: Styles.font14greyRegular.copyWith(
                color: ColorManager.primaryBlue,
              ),
              backgroundColor: Colors.white,
              borderSide: BorderSide(color: ColorManager.primaryBlue),
              radius: 10.r,
            ),
          ),
        ],
      ),
    );
  }
}
