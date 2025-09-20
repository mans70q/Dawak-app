// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarningStats _$WarningStatsFromJson(Map<String, dynamic> json) => WarningStats(
  total: (json['total'] as num?)?.toInt(),
  unresolved: (json['unresolved'] as num?)?.toInt(),
  bySeverity: json['bySeverity'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$WarningStatsToJson(WarningStats instance) =>
    <String, dynamic>{
      'total': instance.total,
      'unresolved': instance.unresolved,
      'bySeverity': instance.bySeverity,
    };
