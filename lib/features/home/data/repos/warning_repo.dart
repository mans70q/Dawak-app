import 'package:spark_flutter_app/core/models/warning.dart';
import 'package:spark_flutter_app/features/home/data/models/warning_stats_response.dart';
import 'package:spark_flutter_app/core/networking/api_error_handler.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/core/networking/api_service.dart';

class WarningRepo {
  final ApiService apiService;

  WarningRepo(this.apiService);

  Future<ApiResult<List<Warning>>> getWarnings({
    required int page,
    required int limit,
    String? severity,
    bool? resolved,
  }) async {
    try {
      final response = await apiService.getWarnings(
        page,
        limit,
        severity,
        resolved,
      );
      return ApiResult.success(response.data);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<WarningStatsResponse>> getWarningStats() async {
    try {
      final response = await apiService.getWarningStats();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
