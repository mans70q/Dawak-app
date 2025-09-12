import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spark_flutter_app/core/networking/api_constants.dart';
import 'package:spark_flutter_app/features/auth/data/models/login_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/models/login_response.dart';
import 'package:spark_flutter_app/features/auth/data/models/register_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/models/register_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody signupRequestBody,
  );

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
