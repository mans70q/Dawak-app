// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicineResponse _$MedicineResponseFromJson(Map<String, dynamic> json) =>
    MedicineResponse(
      success: json['success'] as bool?,
      data:
          json['data'] == null
              ? null
              : Medicine.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicineResponseToJson(MedicineResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data?.toJson(),
    };
