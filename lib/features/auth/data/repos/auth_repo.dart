import 'package:spark_flutter_app/core/networking/api_error_handler.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/core/networking/api_service.dart';
import 'package:spark_flutter_app/features/auth/data/models/login_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/models/login_response.dart';
import 'package:spark_flutter_app/features/auth/data/models/register_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/models/register_response.dart';

class AuthRepo {
  final ApiService apiService;

  AuthRepo(this.apiService);
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<RegisterResponse>> register(
    RegisterRequestBody registerRequestBody,
  ) async {
    try {
      final response = await apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
