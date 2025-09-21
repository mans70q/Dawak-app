import 'package:json_annotation/json_annotation.dart';
import '../../../../core/models/warning_stats.dart';

part 'warning_stats_response.g.dart';

@JsonSerializable()
class WarningStatsResponse {
  final bool? success;
  final WarningStats? data; 

  WarningStatsResponse({
    required this.success,
    required this.data,
  });

  factory WarningStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$WarningStatsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WarningStatsResponseToJson(this);
}
