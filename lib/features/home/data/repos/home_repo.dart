import 'dart:io';
import 'package:dio/dio.dart';
import 'package:spark_flutter_app/core/networking/api_error_handler.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/core/networking/api_service.dart';
import 'package:spark_flutter_app/features/home/data/models/profile_response.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';

class HomeRepo {
  final ApiService apiService;
  HomeRepo(this.apiService);
  Future<ApiResult<ProfileResponse>> getProfile() async {
    try {
      final response = await apiService.getProfile();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ScanResponse>> uploadMedicineImage(File file) async {
    try {
      final multipartFile = await MultipartFile.fromFile(
        file.path,
        filename: file.path.split("/").last,
      );
      final response = await apiService.scan(multipartFile);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
