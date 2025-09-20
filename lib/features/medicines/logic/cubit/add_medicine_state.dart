part of 'add_medicine_cubit.dart';

@freezed
class AddMedicineState with _$AddMedicineState {
  const factory AddMedicineState.initial() = _Initial;
  const factory AddMedicineState.loading() = AddMedicineLoading;
  const factory AddMedicineState.success(AddMedicineResponse response) =
      AddMedicineSuccess;
  const factory AddMedicineState.error(ApiErrorModel error) = AddMedicineError;
}
