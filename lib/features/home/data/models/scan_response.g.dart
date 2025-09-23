// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanResponse _$ScanResponseFromJson(Map<String, dynamic> json) => ScanResponse(
  success: json['success'] as bool,
  message: json['message'] as String?,
  data:
      json['data'] == null
          ? null
          : ScanData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScanResponseToJson(ScanResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

ScanData _$ScanDataFromJson(Map<String, dynamic> json) => ScanData(
  name: json['name'] as String?,
  dosage: json['dosage'] as String?,
  frequency: json['frequency'] as String?,
  instructions: json['instructions'] as String?,
  contraindications:
      (json['contraindications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  sideEffects:
      (json['side_effects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  substitutes:
      (json['substitutes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  therapeuticClass: json['therapeutic_class'] as String?,
  chemicalClass: json['chemical_class'] as String?,
  habitForming: json['habit_forming'] as String?,
  raw:
      json['raw'] == null
          ? null
          : RawData.fromJson(json['raw'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScanDataToJson(ScanData instance) => <String, dynamic>{
  'name': instance.name,
  'dosage': instance.dosage,
  'frequency': instance.frequency,
  'instructions': instance.instructions,
  'contraindications': instance.contraindications,
  'side_effects': instance.sideEffects,
  'substitutes': instance.substitutes,
  'therapeutic_class': instance.therapeuticClass,
  'chemical_class': instance.chemicalClass,
  'habit_forming': instance.habitForming,
  'raw': instance.raw?.toJson(),
};

RawData _$RawDataFromJson(Map<String, dynamic> json) => RawData(
  response:
      json['response'] == null
          ? null
          : RawResponse.fromJson(json['response'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RawDataToJson(RawData instance) => <String, dynamic>{
  'response': instance.response?.toJson(),
};

RawResponse _$RawResponseFromJson(Map<String, dynamic> json) => RawResponse(
  drugName: json['drug_name'] as String?,
  dosage: json['dosage'] as String?,
  frequency: json['frequency'] as String?,
  instructions: json['instructions'] as String?,
  contraindications:
      (json['contraindications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  sideEffects:
      (json['side_effects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  substitutes:
      (json['substitutes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  therapeuticClass: json['therapeutic_class'] as String?,
  chemicalClass: json['chemical_class'] as String?,
  habitForming: json['habit_forming'] as String?,
  warnings:
      (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$RawResponseToJson(RawResponse instance) =>
    <String, dynamic>{
      'drug_name': instance.drugName,
      'dosage': instance.dosage,
      'frequency': instance.frequency,
      'instructions': instance.instructions,
      'contraindications': instance.contraindications,
      'side_effects': instance.sideEffects,
      'substitutes': instance.substitutes,
      'therapeutic_class': instance.therapeuticClass,
      'chemical_class': instance.chemicalClass,
      'habit_forming': instance.habitForming,
      'warnings': instance.warnings,
    };
