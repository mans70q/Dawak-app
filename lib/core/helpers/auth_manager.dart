import 'package:spark_flutter_app/core/helpers/constants.dart';
import 'package:spark_flutter_app/core/helpers/shared_pref_helper.dart';
import 'package:spark_flutter_app/core/networking/dio_factory.dart';

class AuthManager {
  static bool isUserLoggedIn = false;
  static Future<void> handleUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.addTokenAfterAuth(token);
  }

  static Future<void> chechIfUserIsLoggedIn() async {
    String? userToken = await SharedPrefHelper.getSecuredString(
      SharedPrefKeys.userToken,
    );
    if (userToken != null && userToken.isNotEmpty) {
      isUserLoggedIn = true;
    } else {
      isUserLoggedIn = false;
    }
  }
}
