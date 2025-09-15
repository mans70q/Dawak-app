import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/logic/profile%20cubit/profile_cubit.dart';
import 'package:spark_flutter_app/features/profile/ui/widgets/profile_appbar.dart';
import 'package:spark_flutter_app/features/profile/ui/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryBlue.withAlpha(210),
      body: Column(
        children: [
          ProfileAppbar(),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -72.h,
                    left: MediaQuery.of(context).size.width / 2 - 72.r,
                    child: CircleAvatar(
                      radius: 72.r,
                      backgroundImage: AssetImage(Assets.testAvatarImg),
                    ),
                  ),
                  BlocBuilder<ProfileCubit, ProfileState>(
                    builder: (context, state) {
                      if (state is ProfileSuccess) {
                        return ProfileBody(profileData: state.response.data!);
                      } else if (state is ProfileError) {
                        return Center(
                          child: Text(
                            'Error: ${state.errorModel.message}',
                            style: Styles.font24BlackSemiBold,
                          ),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.primaryBlue,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
