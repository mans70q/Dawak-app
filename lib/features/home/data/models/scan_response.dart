import 'package:json_annotation/json_annotation.dart';

part 'scan_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ScanResponse {
  final bool success;
  final String? message;
  final ScanData? data;

  ScanResponse({required this.success, this.message, this.data});

  factory ScanResponse.fromJson(Map<String, dynamic> json) =>
      _$ScanResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ScanResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ScanData {
  final String? name;
  final String? imageUrl;
  final String? imagePublicId;
  final Map<String, dynamic>? aiData;
  final List<String>? detectedTexts;
  final String? source;

  ScanData({
    this.name,
    this.imageUrl,
    this.imagePublicId,
    this.aiData,
    this.detectedTexts,
    this.source,
  });

  factory ScanData.fromJson(Map<String, dynamic> json) =>
      _$ScanDataFromJson(json);
  Map<String, dynamic> toJson() => _$ScanDataToJson(this);
}

// NOTE:
// 1. Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate the *.g.dart files.
// 2. Add `json_serializable` and `json_annotation` to your pubspec.yaml dependencies/dev_dependencies.
