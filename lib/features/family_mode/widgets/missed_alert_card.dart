import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class MissedAlertCard extends StatelessWidget {
  final String name;
  final String alertMessage;
  final String time;
  final String lateMessage;
  final String avatarPath;

  const MissedAlertCard({
    super.key,
    required this.name,
    required this.alertMessage,
    required this.time,
    required this.lateMessage,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.red),
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
                Text(name, style: Styles.font16BlackSemiBold),
                Text(
                  '$alertMessage at $time',
                  style: Styles.font12BlackRegular,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.red,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      lateMessage,
                      style: const TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.close, color: Colors.red),
        ],
      ),
    );
  }
}
