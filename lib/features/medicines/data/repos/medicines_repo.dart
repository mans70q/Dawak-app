import 'package:spark_flutter_app/core/networking/api_error_handler.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/core/networking/api_service.dart';
import 'package:spark_flutter_app/features/home/data/models/medicine_response.dart';

class MedicinesRepo {
  final ApiService apiService;
  MedicinesRepo(this.apiService);

  Future<ApiResult<MedicineResponse>> getMedicineById(String id) async {
    try {
      final response = await apiService.getMedicine(id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
