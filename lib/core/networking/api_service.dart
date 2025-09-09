import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spark_flutter_app/core/networking/api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}
