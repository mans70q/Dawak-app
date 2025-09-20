import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:spark_flutter_app/core/networking/api_service.dart';
import 'package:spark_flutter_app/core/networking/dio_factory.dart';
import 'package:spark_flutter_app/features/auth/data/repos/auth_repo.dart';
import 'package:spark_flutter_app/features/home/data/repos/home_repo.dart';
import 'package:spark_flutter_app/features/medicines/data/repos/medicines_repo.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<MedicinesRepo>(() => MedicinesRepo(getIt()));
}
