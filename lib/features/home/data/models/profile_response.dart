import 'package:json_annotation/json_annotation.dart';
import 'package:spark_flutter_app/core/models/adherence_stats.dart';
import 'package:spark_flutter_app/core/models/medicine.dart';
import 'package:spark_flutter_app/core/models/reminder.dart';
import 'package:spark_flutter_app/core/models/warning.dart';

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
