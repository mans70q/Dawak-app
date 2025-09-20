import 'package:json_annotation/json_annotation.dart';
part 'warning.g.dart';

@JsonSerializable(explicitToJson: true)
class Warning {
  @JsonKey(name: '_id')
  final String? id;
  final String? userId;
  final String? medicineId;
  final String? severity;
  final String? message;
  final String? type;
  final bool? resolved;
  final DateTime? resolvedAt;
  final WarningData? data;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Warning({
    this.id,
    this.userId,
    this.medicineId,
    this.severity,
    this.message,
    this.type,
    this.resolved,
    this.resolvedAt,
    this.data,
    this.createdAt,
    this.updatedAt,
  });

  factory Warning.fromJson(Map<String, dynamic> json) =>
      _$WarningFromJson(json);
  Map<String, dynamic> toJson() => _$WarningToJson(this);
}

@JsonSerializable()
class WarningData {
  final List<String>? interactingDrugs;

  WarningData({this.interactingDrugs});

  factory WarningData.fromJson(Map<String, dynamic> json) =>
      _$WarningDataFromJson(json);
  Map<String, dynamic> toJson() => _$WarningDataToJson(this);
}
