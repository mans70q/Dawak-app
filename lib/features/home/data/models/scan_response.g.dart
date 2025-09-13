// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanResponse _$ScanResponseFromJson(Map<String, dynamic> json) => ScanResponse(
  success: json['success'] as bool,
  message: json['message'] as String?,
  data:
      json['data'] == null
          ? null
          : ScanData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScanResponseToJson(ScanResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

ScanData _$ScanDataFromJson(Map<String, dynamic> json) => ScanData(
  name: json['name'] as String?,
  imageUrl: json['imageUrl'] as String?,
  imagePublicId: json['imagePublicId'] as String?,
  aiData: json['aiData'] as Map<String, dynamic>?,
  detectedTexts:
      (json['detectedTexts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  source: json['source'] as String?,
);

Map<String, dynamic> _$ScanDataToJson(ScanData instance) => <String, dynamic>{
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'imagePublicId': instance.imagePublicId,
  'aiData': instance.aiData,
  'detectedTexts': instance.detectedTexts,
  'source': instance.source,
};
