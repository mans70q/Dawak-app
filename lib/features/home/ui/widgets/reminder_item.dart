import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';

class ReminderItem extends StatelessWidget {
  const ReminderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0XFFF7F7F7),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Colors.black54),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text('Medicine 1', style: Styles.font18BlackSemiBold),
              Text('500mg - 2x/day', style: Styles.font14greyRegular),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 65.w,
            child: AppButton(
              text: 'Taken',
              textStyle: Styles.font12BlackRegular,
              backgroundColor: Color(0XFF43D613),
              radius: 10.r,
            ),
          ),
          SizedBox(width: 16.w),
          SizedBox(
            width: 65.w,
            child: AppButton(
              text: 'Missed',
              textStyle: Styles.font12BlackRegular,
              backgroundColor: Colors.transparent,
              borderSide: BorderSide(color: Colors.red),
              radius: 10.r,
            ),
          ),
        ],
      ),
    );
  }
}
