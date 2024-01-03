import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class AttendanceMarkRegisterModelResponse
    with _$AttendanceMarkRegisterModelResponse {
  factory AttendanceMarkRegisterModelResponse({
    @JsonKey(name: 'attendanceRegister')
        List<AttendanceMarkRegisterModel>? attendanceRegister,
  }) = _AttendanceMarkRegisterModelResponse;

  factory AttendanceMarkRegisterModelResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendanceMarkRegisterModelResponseFromJson(json);
}

@freezed
class AttendanceMarkRegisterModel with _$AttendanceMarkRegisterModel {
  factory AttendanceMarkRegisterModel({
    String? id,
    String? tenantId,
    String? registerNumber,
    String? name,
    String? referenceId,
    String? serviceCode,
    int? startDate,
    int? endDate,
    String? status,
    @JsonKey(name: 'attendees')
        List<AttendanceMarkIndividualModel>? attendanceAttendees,
    @JsonKey(name: 'auditDetails')
        AuditDetails? auditDetails,
  }) = _AttendanceMarkRegisterModel;

  factory AttendanceMarkRegisterModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendanceMarkRegisterModelFromJson(json);
}

@freezed
class AttendanceMarkIndividualModel with _$AttendanceMarkIndividualModel {
  factory AttendanceMarkIndividualModel({
    String? id,
    String? tenantId,
    String? registerId,
    String? individualId,
    int? enrollmentDate,
    int? denrollmentDate,
  }) = _AttendanceMarkIndividualModel;

  factory AttendanceMarkIndividualModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendanceMarkIndividualModelFromJson(json);
}

@freezed
class AuditDetails with _$AuditDetails {
  const factory AuditDetails({
    String? createdBy,
    String? lastModifiedBy,
    int? createdTime,
    int? lastModifiedTime,
  }) = _AuditDetails;

  factory AuditDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AuditDetailsFromJson(json);
}
