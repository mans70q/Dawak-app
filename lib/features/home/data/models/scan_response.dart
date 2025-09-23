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
  final String? dosage;
  final String? frequency;
  final String? instructions;
  final List<String>? contraindications;
  @JsonKey(name: 'side_effects')
  final List<String>? sideEffects;
  final List<String>? substitutes;
  @JsonKey(name: 'therapeutic_class')
  final String? therapeuticClass;
  @JsonKey(name: 'chemical_class')
  final String? chemicalClass;
  @JsonKey(name: 'habit_forming')
  final String? habitForming;
  final RawData? raw;

  ScanData({
    this.name,
    this.dosage,
    this.frequency,
    this.instructions,
    this.contraindications,
    this.sideEffects,
    this.substitutes,
    this.therapeuticClass,
    this.chemicalClass,
    this.habitForming,
    this.raw,
  });

  factory ScanData.fromJson(Map<String, dynamic> json) =>
      _$ScanDataFromJson(json);

  Map<String, dynamic> toJson() => _$ScanDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RawData {
  final RawResponse? response;

  RawData({this.response});

  factory RawData.fromJson(Map<String, dynamic> json) =>
      _$RawDataFromJson(json);

  Map<String, dynamic> toJson() => _$RawDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RawResponse {
  @JsonKey(name: 'drug_name')
  final String? drugName;
  final String? dosage;
  final String? frequency;
  final String? instructions;
  final List<String>? contraindications;
  @JsonKey(name: 'side_effects')
  final List<String>? sideEffects;
  final List<String>? substitutes;
  @JsonKey(name: 'therapeutic_class')
  final String? therapeuticClass;
  @JsonKey(name: 'chemical_class')
  final String? chemicalClass;
  @JsonKey(name: 'habit_forming')
  final String? habitForming;
  final List<String>? warnings;

  RawResponse({
    this.drugName,
    this.dosage,
    this.frequency,
    this.instructions,
    this.contraindications,
    this.sideEffects,
    this.substitutes,
    this.therapeuticClass,
    this.chemicalClass,
    this.habitForming,
    this.warnings,
  });

  factory RawResponse.fromJson(Map<String, dynamic> json) =>
      _$RawResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RawResponseToJson(this);
}
