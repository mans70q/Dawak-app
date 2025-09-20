import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark_flutter_app/core/networking/api_error_model.dart';
import 'package:spark_flutter_app/core/networking/api_result.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_request_body.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_response.dart';
import 'package:spark_flutter_app/features/medicines/data/repos/medicines_repo.dart';

part 'add_medicine_state.dart';
part 'add_medicine_cubit.freezed.dart';

class AddMedicineCubit extends Cubit<AddMedicineState> {
  final MedicinesRepo repo;
  AddMedicineCubit(this.repo) : super(AddMedicineState.initial());

  Future<void> addMedicine(AddMedicineRequestBody data, File? file) async {
    emit(AddMedicineState.loading());
    final result = await repo.addMedicine(data, file);
    switch (result) {
      case Success(data: final response):
        emit(AddMedicineState.success(response));
      case Failure(apiErrorModel: final errorModel):
        emit(AddMedicineState.error(errorModel));
    }
  }
}
