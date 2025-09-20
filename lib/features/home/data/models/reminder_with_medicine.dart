import 'package:spark_flutter_app/core/models/reminder.dart';
import 'package:spark_flutter_app/features/home/data/models/medicine_response.dart';

class ReminderWithMedicine {
  final Reminder reminder;
  final MedicineResponse medicine;

  ReminderWithMedicine({required this.reminder, required this.medicine});
}
