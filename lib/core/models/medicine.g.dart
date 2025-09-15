// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medicine _$MedicineFromJson(Map<String, dynamic> json) => Medicine(
  id: json['_id'] as String?,
  userId: json['userId'] as String?,
  name: json['name'] as String?,
  dosage: json['dosage'] as String?,
  frequency: json['frequency'] as String?,
  instructions: json['instructions'] as String?,
  imageUrl: json['imageUrl'] as String?,
  imagePublicId: json['imagePublicId'] as String?,
  source: json['source'] as String?,
  status: json['status'] as String?,
  reminderIds:
      (json['reminderIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
  useCustomTimes: json['useCustomTimes'] as bool?,
  customTimes:
      (json['customTimes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  stoppedAt:
      json['stoppedAt'] == null
          ? null
          : DateTime.parse(json['stoppedAt'] as String),
  stoppedReason: json['stoppedReason'] as String?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$MedicineToJson(Medicine instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'dosage': instance.dosage,
  'frequency': instance.frequency,
  'instructions': instance.instructions,
  'imageUrl': instance.imageUrl,
  'imagePublicId': instance.imagePublicId,
  'source': instance.source,
  'status': instance.status,
  'reminderIds': instance.reminderIds,
  'useCustomTimes': instance.useCustomTimes,
  'customTimes': instance.customTimes,
  'stoppedAt': instance.stoppedAt?.toIso8601String(),
  'stoppedReason': instance.stoppedReason,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
