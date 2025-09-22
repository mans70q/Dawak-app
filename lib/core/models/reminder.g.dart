// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reminder _$ReminderFromJson(Map<String, dynamic> json) => Reminder(
  id: json['_id'] as String?,
  userId: json['userId'] as String?,
  medicineId: json['medicineId'] as String?,
  schedule:
      (json['schedule'] as List<dynamic>?)?.map((e) => e as String).toList(),
  nextAt:
      json['nextAt'] == null ? null : DateTime.parse(json['nextAt'] as String),
  active: json['active'] as bool?,
  statusHistory:
      (json['statusHistory'] as List<dynamic>?)
          ?.map((e) => StatusHistoryEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
  medicine:
      json['medicine'] == null
          ? null
          : Medicine.fromJson(json['medicine'] as Map<String, dynamic>),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ReminderToJson(Reminder instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'medicineId': instance.medicineId,
  'schedule': instance.schedule,
  'nextAt': instance.nextAt?.toIso8601String(),
  'active': instance.active,
  'statusHistory': instance.statusHistory?.map((e) => e.toJson()).toList(),
  'medicine': instance.medicine?.toJson(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

StatusHistoryEntry _$StatusHistoryEntryFromJson(Map<String, dynamic> json) =>
    StatusHistoryEntry(
      at: json['at'] == null ? null : DateTime.parse(json['at'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$StatusHistoryEntryToJson(StatusHistoryEntry instance) =>
    <String, dynamic>{
      'at': instance.at?.toIso8601String(),
      'status': instance.status,
    };
