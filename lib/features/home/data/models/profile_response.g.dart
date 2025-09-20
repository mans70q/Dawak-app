// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      success: json['success'] as bool,
      data:
          json['data'] == null
              ? null
              : ProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data?.toJson(),
    };

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => ProfileData(
  id: json['id'] as String?,
  email: json['email'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phone: json['phone'] as String?,
  language: json['language'] as String?,
  role: json['role'] as String?,
  notificationsEnabled: json['notificationsEnabled'] as bool?,
  profileImage: json['profileImage'] as String?,
  dateOfBirth:
      json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
  emergencyContact:
      json['emergencyContact'] == null
          ? null
          : EmergencyContact.fromJson(
            json['emergencyContact'] as Map<String, dynamic>,
          ),
  adherenceStats:
      json['adherenceStats'] == null
          ? null
          : AdherenceStats.fromJson(
            json['adherenceStats'] as Map<String, dynamic>,
          ),
  medicines:
      (json['medicines'] as List<dynamic>?)
          ?.map((e) => Medicine.fromJson(e as Map<String, dynamic>))
          .toList(),
  reminders:
      (json['reminders'] as List<dynamic>?)
          ?.map((e) => Reminder.fromJson(e as Map<String, dynamic>))
          .toList(),
  warnings:
      (json['warnings'] as List<dynamic>?)
          ?.map((e) => Warning.fromJson(e as Map<String, dynamic>))
          .toList(),
  caregiverOf:
      (json['caregiverOf'] as List<dynamic>?)?.map((e) => e as String).toList(),
  caredBy:
      (json['caredBy'] as List<dynamic>?)?.map((e) => e as String).toList(),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'language': instance.language,
      'role': instance.role,
      'notificationsEnabled': instance.notificationsEnabled,
      'profileImage': instance.profileImage,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'emergencyContact': instance.emergencyContact?.toJson(),
      'adherenceStats': instance.adherenceStats?.toJson(),
      'medicines': instance.medicines?.map((e) => e.toJson()).toList(),
      'reminders': instance.reminders?.map((e) => e.toJson()).toList(),
      'warnings': instance.warnings?.map((e) => e.toJson()).toList(),
      'caregiverOf': instance.caregiverOf,
      'caredBy': instance.caredBy,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

EmergencyContact _$EmergencyContactFromJson(Map<String, dynamic> json) =>
    EmergencyContact(
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      relationship: json['relationship'] as String? ?? '',
    );

Map<String, dynamic> _$EmergencyContactToJson(EmergencyContact instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'relationship': instance.relationship,
    };
