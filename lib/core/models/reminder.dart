import 'package:json_annotation/json_annotation.dart';
part 'reminder.g.dart';

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
