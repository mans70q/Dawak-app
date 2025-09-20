import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
    required this.firstName,
    required this.lastName,
  });
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 28.h),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(Assets.testAvatarImg),
            radius: 35.r,
          ),
          SizedBox(width: 16.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello 👋', style: Styles.font14greyRegular),
              Text('$firstName $lastName', style: Styles.font16BlackSemiBold),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.warning_amber_rounded,
              color: Color(0XFFE99629),
              size: 28,
            ),
            onPressed: () => GoRouter.of(context).push(Routes.warningScreen),
          ),
        ],
      ),
    );
  }
}
