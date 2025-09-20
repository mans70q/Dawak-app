// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warning _$WarningFromJson(Map<String, dynamic> json) => Warning(
  id: json['_id'] as String?,
  userId: json['userId'] as String?,
  medicineId: json['medicineId'] as String?,
  severity: json['severity'] as String?,
  message: json['message'] as String?,
  type: json['type'] as String?,
  resolved: json['resolved'] as bool?,
  resolvedAt:
      json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
  data:
      json['data'] == null
          ? null
          : WarningData.fromJson(json['data'] as Map<String, dynamic>),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$WarningToJson(Warning instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'medicineId': instance.medicineId,
  'severity': instance.severity,
  'message': instance.message,
  'type': instance.type,
  'resolved': instance.resolved,
  'resolvedAt': instance.resolvedAt?.toIso8601String(),
  'data': instance.data?.toJson(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

WarningData _$WarningDataFromJson(Map<String, dynamic> json) => WarningData(
  interactingDrugs:
      (json['interactingDrugs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$WarningDataToJson(WarningData instance) =>
    <String, dynamic>{'interactingDrugs': instance.interactingDrugs};
