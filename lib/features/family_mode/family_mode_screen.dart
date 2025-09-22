import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/family_member_tile.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/missed_alert_card.dart';

class FamilyModeScreen extends StatelessWidget {
  const FamilyModeScreen({super.key});

  final List<Map<String, String>> familyMembers = const [
    {
      'name': 'Maya',
      'relation': 'Daughter',
      'healthInfo': 'Hypertension, Diabetes',
      'avatarPath': 'assets/images/test_avatar_daughter_img.png',
    },
    {
      'name': 'Ahmed',
      'relation': 'Father',
      'healthInfo': 'Allergies',
      'avatarPath': 'assets/images/test_avatar_father_img.png',
    },
    {
      'name': 'Omar',
      'relation': 'Son',
      'healthInfo': 'Hypertension, Diabetes',
      'avatarPath': 'assets/images/test_avatar_son_img.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Mode', style: Styles.font24BlackSemiBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MissedAlertCard(
              name: "Michael Johnson",
              alertMessage: "Missed Heart Med at ",
              time: "4 PM",
              lateMessage: "4 hours late",
              avatarPath: "assets/images/test_avatar_img.png",
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: familyMembers.length,
                itemBuilder: (context, index) {
                  final member = familyMembers[index];
                  return InkWell(
                    onTap: () {
                      GoRouter.of(context).push(
                        Routes.familyMemberDetailsScreen,
                        extra: {
                          'name': member['name']!,
                          'relation': member['relation']!,
                          'avatarPath': member['avatarPath']!,
                        },
                      );
                    },
                    child: FamilyMemberTile(
                      name: member['name']!,
                      relation: member['relation']!,
                      healthInfo: member['healthInfo']!,
                      avatarPath: member['avatarPath']!,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 44.h,
              width: double.infinity,
              child: AppButton(
                text: "+  Add Member",
                textStyle: Styles.font16WhiteMedium,
                onPressed: () {},
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
