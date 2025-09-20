// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adherence_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdherenceStats _$AdherenceStatsFromJson(Map<String, dynamic> json) =>
    AdherenceStats(
      totalTaken: (json['totalTaken'] as num?)?.toInt(),
      totalMissed: (json['totalMissed'] as num?)?.toInt(),
      streak: (json['streak'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AdherenceStatsToJson(AdherenceStats instance) =>
    <String, dynamic>{
      'totalTaken': instance.totalTaken,
      'totalMissed': instance.totalMissed,
      'streak': instance.streak,
    };
