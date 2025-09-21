// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning_stats_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarningStatsResponse _$WarningStatsResponseFromJson(
  Map<String, dynamic> json,
) => WarningStatsResponse(
  success: json['success'] as bool?,
  data:
      json['data'] == null
          ? null
          : WarningStats.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WarningStatsResponseToJson(
  WarningStatsResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
