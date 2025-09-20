import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/models/medicine.dart';
import 'package:spark_flutter_app/core/models/reminder.dart';
import 'package:spark_flutter_app/core/networking/api_error_handler.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/home/data/models/medicine_response.dart';
import 'package:spark_flutter_app/features/home/data/models/reminder_with_medicine.dart';
import 'package:spark_flutter_app/features/medicines/data/repos/medicines_repo.dart';

part 'reminder_state.dart';
part 'reminder_cubit.freezed.dart';

class ReminderCubit extends Cubit<ReminderState> {
  final MedicinesRepo repo;
  ReminderCubit(this.repo) : super(ReminderState.initial());
  Future<void> loadRemindersWithMedicines(List<Reminder> reminders) async {
    emit(ReminderLoading());
    if (reminders.isEmpty) {
      emit(ReminderSuccess([]));
      return;
    }
    try {
      final List<ReminderWithMedicine> finalReminders = [];
      for (final reminder in reminders) {
        final result = await repo.getMedicineById(reminder.medicineId!);
        switch (result) {
          case Success(data: final medicine):
            finalReminders.add(
              ReminderWithMedicine(reminder: reminder, medicine: medicine),
            );
            break;
          // case Failure(apiErrorModel: final errorModel):
          case Failure():
            finalReminders.add(
              ReminderWithMedicine(
                reminder: reminder,
                medicine: MedicineResponse(
                  data: Medicine(
                    id: reminder.medicineId!,
                    name: 'Name Unknown',
                  ),
                ),
              ),
            );
        }
      }
      emit(ReminderSuccess(finalReminders));
    } catch (error) {
      emit(ReminderError(ApiErrorHandler.handle(error)));
    }
  }
}
