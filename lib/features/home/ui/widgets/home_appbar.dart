import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/logic/warning%20cubit/warning_cubit.dart';

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
    return BlocBuilder<WarningCubit, WarningState>(
      builder: (context, state) {
        final warningCount = state.when(
          initial: () => 0,
          loading: () => 0,
          success: (_) => 0,
          statsSuccess: (stats) {
              return stats.total ?? 0;
          },
          error: (_) => 0,
        );

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
                  Text(
                    '$firstName $lastName',
                    style: Styles.font16BlackSemiBold,
                  ),
                ],
              ),
              Spacer(),
              Stack(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.warning_amber_rounded,
                      color: Color(0XFFE99629),
                      size: 28,
                    ),
                    onPressed:
                        () => GoRouter.of(context).push(Routes.warningScreen),
                  ),
                  if (warningCount > 0)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '$warningCount',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Icon(Icons.notifications_none_rounded, size: 28),
            ],
          ),
        );
      },
    );
  }
}
