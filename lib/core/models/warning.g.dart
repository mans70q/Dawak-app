// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warning _$WarningFromJson(Map<String, dynamic> json) => Warning(
  id: json['_id'] as String?,
  userId: json['userId'] as String?,
  medicine:
      json['medicine'] == null
          ? null
          : Medicine.fromJson(json['medicine'] as Map<String, dynamic>),
  severity: json['severity'] as String?,
  message: json['message'] as String?,
  type: json['type'] as String?,
  resolved: json['resolved'] as bool?,
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
  'medicine': instance.medicine?.toJson(),
  'severity': instance.severity,
  'message': instance.message,
  'type': instance.type,
  'resolved': instance.resolved,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
