import 'package:flutter/material.dart';
import 'package:spark_flutter_app/features/reminders/ui/widgets/reminder_item_card.dart';

class ReminderCardList extends StatelessWidget {
  const ReminderCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return ReminderItemCard();
      },
    );
  }
}
