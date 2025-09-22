import 'package:flutter/material.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/custom_app_bar.dart';
import 'package:spark_flutter_app/features/family_mode/widgets/medication_tile.dart';

class FamilyMemberDetailsScreen extends StatelessWidget {
  final String name;
  final String relation;
  final String avatarPath;

  const FamilyMemberDetailsScreen({
    super.key,
    required this.name,
    required this.relation,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: name,
        relation: relation,
        avatarPath: avatarPath,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: [
                  MedicationTile(
                    title: 'Claritin',
                    time: '09:00 AM',
                    status: 'completed',
                  ),
                  MedicationTile(
                    title: 'Inhaler',
                    time: '02:00 PM',
                    status: 'missed',
                    lateMessage: '2 hours late',
                  ),
                  MedicationTile(
                    title: 'Claritin',
                    time: '08:00 PM',
                    status: 'upcoming',
                    remainingTime: '3 hours left',
                  ),
                  MedicationTile(
                    title: 'Vitamins',
                    time: '10:00 PM',
                    status: 'upcoming',
                    remainingTime: '10 hours left',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
