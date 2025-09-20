import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spark_flutter_app/core/models/warning.dart';
import 'package:spark_flutter_app/core/networking/api_constants.dart';
import 'package:spark_flutter_app/features/auth/data/models/login_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/models/login_response.dart';
import 'package:spark_flutter_app/features/auth/data/models/register_request_body.dart';
import 'package:spark_flutter_app/features/auth/data/models/register_response.dart';
import 'package:spark_flutter_app/features/home/data/models/medicine_response.dart';
import 'package:spark_flutter_app/features/home/data/models/profile_response.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_response.dart';
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

  @GET(ApiConstants.profile)
  Future<ProfileResponse> getProfile();

  @MultiPart()
  @POST(ApiConstants.scan)
  Future<ScanResponse> scan(@Part(name: "file") MultipartFile file);

  @GET("${ApiConstants.medicines}/{id}")
  Future<MedicineResponse> getMedicine(@Path("id") String id);


  @MultiPart()
  @POST(ApiConstants.medicines)
  Future<AddMedicineResponse> addMedicine(
    @Part() String name,
    @Part() String dosage,
    @Part() String frequency,
    @Part() String instructions,
    @Part() String source,
    @Part(name: "file") MultipartFile? file,
  );

  @GET(ApiConstants.warnings)
  Future<List<Warning>> getWarnings(
    @Query("page") int page,
    @Query("limit") int limit,
    @Query("severity") String? severity,
    @Query("resolved") bool? resolved,
  );

  @GET("${ApiConstants.warnings}/stats")
  Future<Map<String, dynamic>> getWarningStats();

  @PATCH("${ApiConstants.warnings}/{id}/resolve")
  Future<void> resolveWarning(@Path("id") String id);

}
