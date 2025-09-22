import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/family_member_tile.dart';

class FamilyMemberList extends StatelessWidget {
  final List<Map<String, String>> familyMembers;

  const FamilyMemberList({super.key, required this.familyMembers});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}
