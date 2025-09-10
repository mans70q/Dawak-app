import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
class WarningEmptyState extends StatelessWidget {
  const WarningEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Icon(Icons.warning_amber_rounded, color: Colors.amber, size: 70),
          Text('No Warnings', style: Styles.font18BlackSemiBold),
          Text(
            'Great! No dangerous interactions detected.',
            style: Styles.font16GreyRegular,
          ),
        ],
      ),
    );
  }
}