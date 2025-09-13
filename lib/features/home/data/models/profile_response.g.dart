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

Medicine _$MedicineFromJson(Map<String, dynamic> json) => Medicine(
  id: json['_id'] as String?,
  userId: json['userId'] as String?,
  name: json['name'] as String?,
  dosage: json['dosage'] as String?,
  frequency: json['frequency'] as String?,
  instructions: json['instructions'] as String?,
  imageUrl: json['imageUrl'] as String?,
  imagePublicId: json['imagePublicId'] as String?,
  source: json['source'] as String?,
  status: json['status'] as String?,
  reminderIds:
      (json['reminderIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
  useCustomTimes: json['useCustomTimes'] as bool?,
  customTimes:
      (json['customTimes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  stoppedAt:
      json['stoppedAt'] == null
          ? null
          : DateTime.parse(json['stoppedAt'] as String),
  stoppedReason: json['stoppedReason'] as String?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$MedicineToJson(Medicine instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'dosage': instance.dosage,
  'frequency': instance.frequency,
  'instructions': instance.instructions,
  'imageUrl': instance.imageUrl,
  'imagePublicId': instance.imagePublicId,
  'source': instance.source,
  'status': instance.status,
  'reminderIds': instance.reminderIds,
  'useCustomTimes': instance.useCustomTimes,
  'customTimes': instance.customTimes,
  'stoppedAt': instance.stoppedAt?.toIso8601String(),
  'stoppedReason': instance.stoppedReason,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

Reminder _$ReminderFromJson(Map<String, dynamic> json) => Reminder(
  id: json['_id'] as String?,
  userId: json['userId'] as String?,
  medicineId: json['medicineId'] as String?,
  schedule:
      (json['schedule'] as List<dynamic>?)?.map((e) => e as String).toList(),
  nextAt:
      json['nextAt'] == null ? null : DateTime.parse(json['nextAt'] as String),
  active: json['active'] as bool?,
  statusHistory:
      (json['statusHistory'] as List<dynamic>?)
          ?.map((e) => StatusHistoryEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ReminderToJson(Reminder instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'medicineId': instance.medicineId,
  'schedule': instance.schedule,
  'nextAt': instance.nextAt?.toIso8601String(),
  'active': instance.active,
  'statusHistory': instance.statusHistory?.map((e) => e.toJson()).toList(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

StatusHistoryEntry _$StatusHistoryEntryFromJson(Map<String, dynamic> json) =>
    StatusHistoryEntry(
      at: json['at'] == null ? null : DateTime.parse(json['at'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$StatusHistoryEntryToJson(StatusHistoryEntry instance) =>
    <String, dynamic>{
      'at': instance.at?.toIso8601String(),
      'status': instance.status,
    };

Warning _$WarningFromJson(Map<String, dynamic> json) => Warning(
  id: json['_id'] as String?,
  userId: json['userId'] as String?,
  medicineId: json['medicineId'] as String?,
  severity: json['severity'] as String?,
  message: json['message'] as String?,
  type: json['type'] as String?,
  resolved: json['resolved'] as bool?,
  resolvedAt:
      json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
  data:
      json['data'] == null
          ? null
          : WarningData.fromJson(json['data'] as Map<String, dynamic>),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$WarningToJson(Warning instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'medicineId': instance.medicineId,
  'severity': instance.severity,
  'message': instance.message,
  'type': instance.type,
  'resolved': instance.resolved,
  'resolvedAt': instance.resolvedAt?.toIso8601String(),
  'data': instance.data?.toJson(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

WarningData _$WarningDataFromJson(Map<String, dynamic> json) => WarningData(
  interactingDrugs:
      (json['interactingDrugs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$WarningDataToJson(WarningData instance) =>
    <String, dynamic>{'interactingDrugs': instance.interactingDrugs};
