import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_empty_state.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_item_card.dart';

Color getTextColor(String risk) {
  switch (risk.toLowerCase()) {
    case 'high':
      return Colors.red;
    case 'medium':
      return Colors.orange;
    case 'low':
      return Colors.green;
    default:
      return Colors.black54;
  }
}

class WarningCardList extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  final String riskType;

  const WarningCardList({
    super.key,
    required this.items,
    required this.riskType,
  });

  @override
  Widget build(BuildContext context) {
    final filteredItems =
        riskType.toLowerCase() == "all"
            ? items
            : items.where((item) {
              final risk = (item['risk'] ?? '').toString().toLowerCase();
              return risk == riskType.toLowerCase();
            }).toList();

    if (filteredItems.isEmpty) {
      return WarningEmptyState();
    }

    return ListView.separated(
      itemCount: filteredItems.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        final risk = (item['risk'] ?? '').toString();

        return WarningItemCard(
          title: (item['title'] ?? '').toString(),
          subtitle: (item['subtitle'] ?? '').toString(),
          risk: risk,
          onView: () {
            // TODO: Handle navigate to warning details
          },
          onDismiss: () {
            // TODO: Handle dismiss
          },
          getTextColor: getTextColor,
        );
      },
    );
  }
}
