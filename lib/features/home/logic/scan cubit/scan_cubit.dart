import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';
import 'package:spark_flutter_app/features/home/data/repos/home_repo.dart';

part 'scan_state.dart';
part 'scan_cubit.freezed.dart';

class ScanCubit extends Cubit<ScanState> {
  final HomeRepo homeRepo;
  ScanCubit(this.homeRepo) : super(ScanState.initial());
  Future<void> uploadImage(File file) async {
    emit(ScanState.loading());
    final result = await homeRepo.uploadMedicineImage(file);
    switch (result) {
      case Success(data: final scanResponse):
        emit(ScanState.success(scanResponse));
      case Failure(apiErrorModel: final errorModel):
        emit(ScanState.error(errorModel));
    }
  }
}
