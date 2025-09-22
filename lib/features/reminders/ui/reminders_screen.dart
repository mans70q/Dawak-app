import 'package:flutter/material.dart';
import 'package:spark_flutter_app/core/widgets/app_body.dart';
import 'package:spark_flutter_app/features/reminders/ui/widgets/reminders_appbar.dart';
import 'package:spark_flutter_app/features/reminders/ui/widgets/reminders_body.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  DateTime _selectedDate = DateTime.now();
  int _selectedMonth = DateTime.now().month;

  void _onMonthChanged(int month) {
    setState(() {
      _selectedMonth = month;
      _selectedDate = DateTime(_selectedDate.year, month, _selectedDate.day);
    });
  }

  void _onDateSelected(DateTime date) {
    setState(() => _selectedDate = date);
    // Later: context.read<ReminderCubit>().getRemindersFor(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RemindersAppbar(
              selectedMonth: _selectedMonth,
              selectedDate: _selectedDate,
              onMonthChanged: _onMonthChanged,
              onDateSelected: _onDateSelected,
            ),
            AppBody(child: RemindersBody()),
          ],
        ),
      ),
    );
  }
}
