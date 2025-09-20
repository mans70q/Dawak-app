// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_medicine_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMedicineResponse _$AddMedicineResponseFromJson(Map<String, dynamic> json) =>
    AddMedicineResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: MedicineData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddMedicineResponseToJson(
  AddMedicineResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

MedicineData _$MedicineDataFromJson(Map<String, dynamic> json) => MedicineData(
  id: json['_id'] as String,
  userId: json['userId'] as String,
  name: json['name'] as String,
  dosage: json['dosage'] as String,
  frequency: json['frequency'] as String,
  instructions: json['instructions'] as String,
  imageUrl: json['imageUrl'] as String?,
  imagePublicId: json['imagePublicId'] as String?,
  source: json['source'] as String,
  status: json['status'] as String,
  reminderIds:
      (json['reminderIds'] as List<dynamic>)
          .map((e) => Reminder.fromJson(e as Map<String, dynamic>))
          .toList(),
  useCustomTimes: json['useCustomTimes'] as bool,
  customTimes:
      (json['customTimes'] as List<dynamic>).map((e) => e as String).toList(),
  stoppedAt: json['stoppedAt'] as String?,
  stoppedReason: json['stoppedReason'] as String?,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$MedicineDataToJson(MedicineData instance) =>
    <String, dynamic>{
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
      'stoppedAt': instance.stoppedAt,
      'stoppedReason': instance.stoppedReason,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
