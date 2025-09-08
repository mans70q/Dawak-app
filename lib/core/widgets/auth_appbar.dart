import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class AuthAppbar extends StatelessWidget {
  const AuthAppbar({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.primaryBlue,
        image: DecorationImage(
          image: AssetImage(Assets.appbarBackground),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            ColorManager.primaryBlue.withAlpha(200),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              SizedBox(width: 24.w),
              Navigator.of(context).canPop()
                  ? IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  )
                  : const SizedBox(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Styles.font28WhiteBold),
                  SizedBox(
                    width: 300.w,
                    child: Text(subtitle, style: Styles.font12WhiteRegular),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
