import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:spark_flutter_app/app.dart';
import 'package:spark_flutter_app/core/di/dependency_injection.dart';
import 'package:spark_flutter_app/core/helpers/auth_manager.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await setupGetIt();
  await AuthManager.chechIfUserIsLoggedIn();
  FlutterNativeSplash.remove();
  runApp(const SparkApp());
}
