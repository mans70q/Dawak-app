import 'package:flutter/material.dart';

class MedicationTile extends StatelessWidget {
  final String title;
  final String time;
  final String status;
  final String? lateMessage;
  final String? remainingTime;

  const MedicationTile({
    super.key,
    required this.title,
    required this.time,
    required this.status,
    this.lateMessage,
    this.remainingTime,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    IconData icon;
    Color iconColor;

    switch (status) {
      case 'completed':
        backgroundColor = Colors.green.shade50;
        icon = Icons.done;
        iconColor = Colors.green;
        break;
      case 'missed':
        backgroundColor = Colors.red.shade50;
        icon = Icons.clear;
        iconColor = Colors.red;
        break;
      case 'upcoming':
        backgroundColor = Colors.blue.shade50;
        icon = Icons.access_time;
        iconColor = Colors.blue;
        break;
      default:
        backgroundColor = Colors.grey.shade50;
        icon = Icons.help;
        iconColor = Colors.grey;
    }

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (lateMessage != null)
                  Text(
                    lateMessage!,
                    style: const TextStyle(fontSize: 14, color: Colors.red),
                  ),
                if (remainingTime != null)
                  Text(
                    remainingTime!,
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
              ],
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
