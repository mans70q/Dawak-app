import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/models/warning.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/home/data/repos/warning_repo.dart';

part 'warning_state.dart';
part 'warning_cubit.freezed.dart';

class WarningCubit extends Cubit<WarningState> {
  final WarningRepo warningRepo;

  WarningCubit(this.warningRepo) : super(WarningState.initial());

  Future<void> fetchWarnings({
    required int page,
    required int limit,
    String? severity,
    bool? resolved,
  }) async {
    emit(WarningState.loading());
    final result = await warningRepo.getWarnings(
      page: page,
      limit: limit,
      severity: severity,
      resolved: resolved,
    );
    switch (result) {
      case Success(data: final warnings):
        emit(WarningState.success(warnings));
      case Failure(apiErrorModel: final errorModel):
        emit(WarningState.error(errorModel));
    }
  }

  Future<void> fetchWarningStats() async {
    emit(WarningState.loading());
    final result = await warningRepo.getWarningStats();
    switch (result) {
      case Success(data: final stats):
        emit(WarningState.statsSuccess(stats));
      case Failure(apiErrorModel: final errorModel):
        emit(WarningState.error(errorModel));
    }
  }
}