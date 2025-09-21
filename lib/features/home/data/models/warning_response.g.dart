// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarningResponse _$WarningResponseFromJson(Map<String, dynamic> json) =>
    WarningResponse(
      success: json['success'] as bool,
      data:
          (json['data'] as List<dynamic>)
              .map((e) => Warning.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$WarningResponseToJson(WarningResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
