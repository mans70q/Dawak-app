import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:spark_flutter_app/core/helpers/constants.dart';
import 'package:spark_flutter_app/core/helpers/shared_pref_helper.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = Duration(seconds: 60);

    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeOut;
      dio!.options.receiveTimeout = timeOut;
      dio!.options.sendTimeout = timeOut;
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken) ?? 'token NA'}',
    };
  }

  static void addDioInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        error: true,
        compact: true,
      ),
    );
  }

  static void addTokenAfterAuth(String token) {
    dio?.options.headers = {'Authorization': 'Bearer $token'};
  }
}
