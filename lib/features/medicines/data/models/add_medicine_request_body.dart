import 'package:json_annotation/json_annotation.dart';
import 'package:spark_flutter_app/features/home/data/models/scan_response.dart';

part 'add_medicine_request_body.g.dart';

@JsonSerializable()
class AddMedicineRequestBody {
  final String name;
  final String dosage;
  final String frequency;
  final String instructions;
  final String source;
  final ScanData scanData;

  AddMedicineRequestBody({
    required this.scanData,
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.instructions,
    required this.source,
  });

  factory AddMedicineRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddMedicineRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AddMedicineRequestBodyToJson(this);
}
