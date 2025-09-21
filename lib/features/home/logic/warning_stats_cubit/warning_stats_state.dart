part of 'warning_stats_cubit.dart';

@freezed
class WarningStatsState with _$WarningStatsState {
  const factory WarningStatsState.initial() = _Initial;
  const factory WarningStatsState.loading() = _Loading;
  const factory WarningStatsState.success(WarningStats stats) = _Success;
  const factory WarningStatsState.error(ApiErrorModel error) = _Error;
}
