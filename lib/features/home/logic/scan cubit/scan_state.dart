part of 'scan_cubit.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState.initial() = ScanInitial;
  const factory ScanState.loading() = ScanLoading;
  const factory ScanState.success(ScanResponse scanResponse) = ScanSuccess;
  const factory ScanState.error(ApiErrorModel errorModel) = ScanError;
}
