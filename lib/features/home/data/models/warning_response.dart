import 'package:json_annotation/json_annotation.dart';
import '../../../../core/models/warning.dart';

part 'warning_response.g.dart';

@JsonSerializable(explicitToJson: true)
class WarningResponse {
  final bool success;
  final List<Warning> data;

  WarningResponse({required this.success, required this.data});

  factory WarningResponse.fromJson(Map<String, dynamic> json) =>
      _$WarningResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WarningResponseToJson(this);
}
