import 'package:json_annotation/json_annotation.dart';

part 'add_medicine_request_body.g.dart';

@JsonSerializable()
class AddMedicineRequestBody {
  final String name;
  final String dosage;
  final String frequency;
  final String instructions;
  final String source;

  AddMedicineRequestBody({
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
