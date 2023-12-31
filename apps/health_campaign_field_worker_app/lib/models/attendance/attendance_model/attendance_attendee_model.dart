import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_attendee_model.freezed.dart';
part 'attendance_attendee_model.g.dart';

@freezed
class AttendeeServerResponse with _$AttendeeServerResponse {
  const factory AttendeeServerResponse({
    @Default(0)
        int count,
    @JsonKey(name: "attendeeResponseModel")
        final List<AttendeeResponseModel>? attendeeResponseModel,
  }) = _AttendeeServerResponse;

  factory AttendeeServerResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendeeServerResponseFromJson(json);
}

@freezed
class AttendeeResponseModel with _$AttendeeResponseModel {
  const factory AttendeeResponseModel({
    final String? id,
    final String? userId,
    final String? mobileNumber,
    final String? altContactNumber,
    final String? email,
    final String? fatherName,
    final String? husbandName,
    @JsonKey(name: "nameModel") final NameModel? name,
    final String? tenantId,
    final String? clientReferenceId,
  }) = _AttendeeResponseModel;

  factory AttendeeResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendeeResponseModelFromJson(json);
}

@freezed
class NameModel with _$NameModel {
  const factory NameModel({
    final String? id,
    final String? individualClientReferenceId,
    final String? givenName,
    final String? familyName,
    final String? otherNames,
    final bool? nonRecoverableError,
    final String? tenantId,
    final int? rowVersion,
  }) = _NameModel;

  factory NameModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NameModelFromJson(json);
}
