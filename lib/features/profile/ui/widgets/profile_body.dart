import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/services/auth_manager.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/features/home/data/models/profile_response.dart';
import 'package:spark_flutter_app/features/profile/ui/widgets/profile_header.dart';
import 'package:spark_flutter_app/features/profile/ui/widgets/section_title.dart';
import 'package:spark_flutter_app/features/profile/ui/widgets/settings_row.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key, required this.profileData});
  final ProfileData profileData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(top: 72.h, bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileHeader(
              name: '${profileData.firstName!} ${profileData.lastName!}',
              email: profileData.email!,
            ),
            SizedBox(height: 36.h),
            const SectionTitle(title: 'Settings'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Column(
                spacing: 30.h,
                children: [
                  SettingsRow(
                    icon: Icons.notifications_outlined,
                    title: 'Notifications',
                  ),
                  SettingsRow(icon: Icons.lock_outline, title: 'Privacy'),
                  SettingsRow(icon: Icons.language_rounded, title: 'Language'),
                  SettingsRow(
                    icon: Icons.family_restroom,
                    title: 'Family Mode',
                    onPressed: () {
                      GoRouter.of(context).push(Routes.faimlyModeScreen);
                    },
                  ),
                  SettingsRow(
                    icon: Icons.logout_outlined,
                    title: 'Logout',
                    color: Colors.redAccent,
                    onPressed: () async {
                      await AuthManager.logout();
                      if (context.mounted) {
                        GoRouter.of(context).go(Routes.loginScreen);
                      }
                    },
                  ),
                ],
              ),
            ),
            // const SectionTitle(title: 'Family Mode'),
          ],
        ),
      ),
    );
  }
}
