import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.g.dart';

//TODO: Add proper error model
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? statusCode;
  ApiErrorModel({this.message, this.statusCode});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
