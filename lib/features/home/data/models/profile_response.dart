import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileResponse {
  final bool success;
  final ProfileData? data;

  ProfileResponse({required this.success, this.data});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProfileData {
  final String? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? language;
  final String? role;
  final bool? notificationsEnabled;
  final String? profileImage;
  final DateTime? dateOfBirth;
  final EmergencyContact? emergencyContact;
  final AdherenceStats? adherenceStats;
  final List<Medicine>? medicines;
  final List<Reminder>? reminders;
  final List<Warning>? warnings;
  final List<String>? caregiverOf;
  final List<String>? caredBy;
  final DateTime? createdAt;

  ProfileData({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.language,
    this.role,
    this.notificationsEnabled,
    this.profileImage,
    this.dateOfBirth,
    this.emergencyContact,
    this.adherenceStats,
    this.medicines,
    this.reminders,
    this.warnings,
    this.caregiverOf,
    this.caredBy,
    this.createdAt,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}

@JsonSerializable()
class EmergencyContact {
  @JsonKey(defaultValue: "")
  final String? name;

  @JsonKey(defaultValue: "")
  final String? phone;

  @JsonKey(defaultValue: "")
  final String? relationship;

  EmergencyContact({this.name, this.phone, this.relationship});

  factory EmergencyContact.fromJson(Map<String, dynamic> json) =>
      _$EmergencyContactFromJson(json);
  Map<String, dynamic> toJson() => _$EmergencyContactToJson(this);
}

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

@JsonSerializable()
class Medicine {
  @JsonKey(name: '_id')
  final String? id;
  final String? userId;
  final String? name;
  final String? dosage;
  final String? frequency;
  final String? instructions;
  final String? imageUrl;
  final String? imagePublicId;
  final String? source;
  final String? status;
  final List<String>? reminderIds;
  final bool? useCustomTimes;
  final List<String>? customTimes;
  final DateTime? stoppedAt;
  final String? stoppedReason;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Medicine({
    this.id,
    this.userId,
    this.name,
    this.dosage,
    this.frequency,
    this.instructions,
    this.imageUrl,
    this.imagePublicId,
    this.source,
    this.status,
    this.reminderIds,
    this.useCustomTimes,
    this.customTimes,
    this.stoppedAt,
    this.stoppedReason,
    this.createdAt,
    this.updatedAt,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) =>
      _$MedicineFromJson(json);
  Map<String, dynamic> toJson() => _$MedicineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Reminder {
  @JsonKey(name: '_id')
  final String? id;
  final String? userId;
  final String? medicineId;
  final List<String>? schedule;
  final DateTime? nextAt;
  final bool? active;
  final List<StatusHistoryEntry>? statusHistory;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Reminder({
    this.id,
    this.userId,
    this.medicineId,
    this.schedule,
    this.nextAt,
    this.active,
    this.statusHistory,
    this.createdAt,
    this.updatedAt,
  });

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);
  Map<String, dynamic> toJson() => _$ReminderToJson(this);
}

@JsonSerializable()
class StatusHistoryEntry {
  final DateTime? at;
  final String? status;

  StatusHistoryEntry({this.at, this.status});

  factory StatusHistoryEntry.fromJson(Map<String, dynamic> json) =>
      _$StatusHistoryEntryFromJson(json);
  Map<String, dynamic> toJson() => _$StatusHistoryEntryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Warning {
  @JsonKey(name: '_id')
  final String? id;
  final String? userId;
  final String? medicineId;
  final String? severity;
  final String? message;
  final String? type;
  final bool? resolved;
  final DateTime? resolvedAt;
  final WarningData? data;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Warning({
    this.id,
    this.userId,
    this.medicineId,
    this.severity,
    this.message,
    this.type,
    this.resolved,
    this.resolvedAt,
    this.data,
    this.createdAt,
    this.updatedAt,
  });

  factory Warning.fromJson(Map<String, dynamic> json) =>
      _$WarningFromJson(json);
  Map<String, dynamic> toJson() => _$WarningToJson(this);
}

@JsonSerializable()
class WarningData {
  final List<String>? interactingDrugs;

  WarningData({this.interactingDrugs});

  factory WarningData.fromJson(Map<String, dynamic> json) =>
      _$WarningDataFromJson(json);
  Map<String, dynamic> toJson() => _$WarningDataToJson(this);
}
