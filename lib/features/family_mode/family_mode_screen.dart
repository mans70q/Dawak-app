import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/missed_alert_card.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/family_member_list.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/add_member_button.dart';

class FamilyModeScreen extends StatelessWidget {
  const FamilyModeScreen({super.key});

  final List<Map<String, String>> familyMembers = const [
    {
      'name': 'Maya',
      'relation': 'Daughter',
      'healthInfo': 'Hypertension, Diabetes',
      'avatarPath': Assets.testAvatarDaughterImg,
    },
    {
      'name': 'Ahmed',
      'relation': 'Father',
      'healthInfo': 'Allergies',
      'avatarPath': Assets.testAvatarFatherImg,
    },
    {
      'name': 'Omar',
      'relation': 'Son',
      'healthInfo': 'Hypertension, Diabetes',
      'avatarPath': Assets.testAvatarSonImg,
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
            Expanded(child: FamilyMemberList(familyMembers: familyMembers)),
            const AddMemberButton(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
