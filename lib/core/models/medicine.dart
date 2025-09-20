import 'package:json_annotation/json_annotation.dart';
part 'medicine.g.dart';

@JsonSerializable()
class Medicine {
  @JsonKey(name: '_id')
  final String? id;
  final String? userId;
  final String? name;
  final String? dosage;
  final String? frequency;
  final String? instructions;
  final String? imageUrl;
  final String? imagePublicId;
  final String? source;
  final String? status;
  final List<String>? reminderIds;
  final bool? useCustomTimes;
  final List<String>? customTimes;
  final DateTime? stoppedAt;
  final String? stoppedReason;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Medicine({
    this.id,
    this.userId,
    this.name,
    this.dosage,
    this.frequency,
    this.instructions,
    this.imageUrl,
    this.imagePublicId,
    this.source,
    this.status,
    this.reminderIds,
    this.useCustomTimes,
    this.customTimes,
    this.stoppedAt,
    this.stoppedReason,
    this.createdAt,
    this.updatedAt,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) =>
      _$MedicineFromJson(json);
  Map<String, dynamic> toJson() => _$MedicineToJson(this);
}
