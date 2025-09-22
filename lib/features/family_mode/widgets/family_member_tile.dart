import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class FamilyMemberTile extends StatelessWidget {
  final String name;
  final String relation;
  final String healthInfo;
  final String avatarPath;

  const FamilyMemberTile({
    super.key,
    required this.name,
    required this.relation,
    required this.healthInfo,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(radius: 24, backgroundImage: AssetImage(avatarPath)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(name, style: Styles.font16BlackSemiBold),
                    Text(
                      " ($relation) ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  healthInfo,
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 16),
        ],
      ),
    );
  }
}
