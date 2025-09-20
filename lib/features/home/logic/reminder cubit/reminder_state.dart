part of 'reminder_cubit.dart';

@freezed
class ReminderState with _$ReminderState {
  const factory ReminderState.initial() = _Initial;
  const factory ReminderState.loading() = ReminderLoading;
  const factory ReminderState.success(List<ReminderWithMedicine> reminders) =
      ReminderSuccess;
  const factory ReminderState.error(ApiErrorModel errorModel) = ReminderError;
}
