import 'dart:io';

import 'package:dio/dio.dart';
import 'package:spark_flutter_app/core/networking/api_error_handler.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/core/networking/api_service.dart';
import 'package:spark_flutter_app/features/home/data/models/medicine_response.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_request_body.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_response.dart';

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

  Future<ApiResult<AddMedicineResponse>> addMedicine(
    AddMedicineRequestBody data,
    File? file,
  ) async {
    try {
      MultipartFile? multipartFile;
      if (file != null) {
        multipartFile = await MultipartFile.fromFile(
          file.path,
          filename: file.path.split("/").last,
        );
      }
      final response = await apiService.addMedicine(
        data.name,
        data.dosage,
        data.frequency,
        data.instructions,
        data.source,
        multipartFile,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
