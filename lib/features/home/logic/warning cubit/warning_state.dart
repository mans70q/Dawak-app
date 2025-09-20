part of 'warning_cubit.dart';

@freezed
class WarningState with _$WarningState {
  const factory WarningState.initial() = _Initial;
  const factory WarningState.loading() = _Loading;
  const factory WarningState.success(List<Warning> warnings) = _Success;
  const factory WarningState.statsSuccess(WarningStats stats) = _StatsSuccess;
  const factory WarningState.error(ApiErrorModel error) = _Error;
}