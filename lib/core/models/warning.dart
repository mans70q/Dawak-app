import 'package:json_annotation/json_annotation.dart';
import 'package:spark_flutter_app/core/models/medicine.dart';
part 'warning.g.dart';

@JsonSerializable(explicitToJson: true)
class Warning {
  @JsonKey(name: '_id')
  final String? id;
  final String? userId;
  final Medicine? medicine;
  final String? severity;
  final String? message;
  final String? type;
  final bool? resolved;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Warning({
    this.id,
    this.userId,
    this.medicine,
    this.severity,
    this.message,
    this.type,
    this.resolved,
    this.createdAt,
    this.updatedAt,
  });

  factory Warning.fromJson(Map<String, dynamic> json) {
    Medicine? med;
    if (json['medicineId'] != null &&
        json['medicineId'] is Map<String, dynamic>) {
      med = Medicine.fromJson(json['medicineId']);
    }

    return Warning(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      medicine: med,
      severity: json['severity'] as String?,
      message: json['message'] as String?,
      type: json['type'] as String?,
      resolved: json['resolved'] as bool?,
      createdAt:
          json['createdAt'] == null ? null : DateTime.parse(json['createdAt']),
      updatedAt:
          json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() => _$WarningToJson(this);
}
