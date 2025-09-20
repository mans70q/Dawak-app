import 'package:json_annotation/json_annotation.dart';
part 'adherence_stats.g.dart';

@JsonSerializable()
class AdherenceStats {
  final int? totalTaken;
  final int? totalMissed;
  final int? streak;

  AdherenceStats({this.totalTaken, this.totalMissed, this.streak});

  factory AdherenceStats.fromJson(Map<String, dynamic> json) =>
      _$AdherenceStatsFromJson(json);
  Map<String, dynamic> toJson() => _$AdherenceStatsToJson(this);
}
