import 'package:json_annotation/json_annotation.dart';

part 'warning_stats.g.dart';

@JsonSerializable()
class WarningStats {
  final int? total;
  final int? unresolved;
  final Map<String, dynamic>? bySeverity;

  WarningStats({
    required this.total,
    required this.unresolved,
    required this.bySeverity,
  });

  factory WarningStats.fromJson(Map<String, dynamic> json) =>
      _$WarningStatsFromJson(json);

  Map<String, dynamic> toJson() => _$WarningStatsToJson(this);
}
