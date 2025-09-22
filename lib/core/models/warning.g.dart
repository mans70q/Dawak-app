// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
