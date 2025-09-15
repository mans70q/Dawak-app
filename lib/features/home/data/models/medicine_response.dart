import 'package:json_annotation/json_annotation.dart';
import 'package:spark_flutter_app/core/models/medicine.dart';

part 'medicine_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MedicineResponse {
  final bool? success;
  final Medicine? data;

  MedicineResponse({this.success, this.data});

  factory MedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicineResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MedicineResponseToJson(this);
}
