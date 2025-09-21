import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/models/warning_stats.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/home/data/repos/warning_repo.dart';

part 'warning_stats_state.dart';
part 'warning_stats_cubit.freezed.dart';

class WarningStatsCubit extends Cubit<WarningStatsState> {
  final WarningRepo warningRepo;

  WarningStatsCubit(this.warningRepo)
    : super(const WarningStatsState.initial());

  
  Future<void> fetchWarningStats() async {
    emit(const WarningStatsState.loading());
    final result = await warningRepo.getWarningStats();
    switch (result) {
      case Success(data: final stats):
        emit(WarningStatsState.success(stats.data!));
      case Failure(apiErrorModel: final errorModel):
        emit(WarningStatsState.error(errorModel));
    }
  }
}
