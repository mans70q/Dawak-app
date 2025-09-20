import 'package:json_annotation/json_annotation.dart';
import 'package:spark_flutter_app/core/models/reminder.dart';

part 'add_medicine_response.g.dart';

@JsonSerializable()
class AddMedicineResponse {
  final bool success;
  final String message;
  final MedicineData data;

  AddMedicineResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory AddMedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$AddMedicineResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddMedicineResponseToJson(this);
}

@JsonSerializable()
class MedicineData {
  @JsonKey(name: "_id")
  final String id;

  final String userId;
  final String name;
  final String dosage;
  final String frequency;
  final String instructions;
  final String? imageUrl;
  final String? imagePublicId;
  final String source;
  final String status;
  final List<Reminder> reminderIds;
  final bool useCustomTimes;
  final List<String> customTimes;
  final String? stoppedAt;
  final String? stoppedReason;
  final String createdAt;
  final String updatedAt;

  MedicineData({
    required this.id,
    required this.userId,
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.instructions,
    required this.imageUrl,
    required this.imagePublicId,
    required this.source,
    required this.status,
    required this.reminderIds,
    required this.useCustomTimes,
    required this.customTimes,
    this.stoppedAt,
    this.stoppedReason,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MedicineData.fromJson(Map<String, dynamic> json) =>
      _$MedicineDataFromJson(json);

  Map<String, dynamic> toJson() => _$MedicineDataToJson(this);
}
