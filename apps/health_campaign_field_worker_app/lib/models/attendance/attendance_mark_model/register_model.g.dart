// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceMarkRegisterModelResponse
    _$$_AttendanceMarkRegisterModelResponseFromJson(
            Map<String, dynamic> json) =>
        _$_AttendanceMarkRegisterModelResponse(
          attendanceRegister: (json['attendanceRegister'] as List<dynamic>?)
              ?.map((e) => AttendanceMarkRegisterModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_AttendanceMarkRegisterModelResponseToJson(
        _$_AttendanceMarkRegisterModelResponse instance) =>
    <String, dynamic>{
      'attendanceRegister': instance.attendanceRegister,
    };

_$_AttendanceMarkRegisterModel _$$_AttendanceMarkRegisterModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceMarkRegisterModel(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      registerNumber: json['registerNumber'] as String?,
      name: json['name'] as String?,
      referenceId: json['referenceId'] as String?,
      serviceCode: json['serviceCode'] as String?,
      startDate: json['startDate'] as int?,
      endDate: json['endDate'] as int?,
      status: json['status'] as String?,
      attendanceAttendees: (json['attendees'] as List<dynamic>?)
          ?.map((e) =>
              AttendanceMarkIndividualModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      auditDetails: json['auditDetails'] == null
          ? null
          : AuditDetails.fromJson(json['auditDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AttendanceMarkRegisterModelToJson(
        _$_AttendanceMarkRegisterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'registerNumber': instance.registerNumber,
      'name': instance.name,
      'referenceId': instance.referenceId,
      'serviceCode': instance.serviceCode,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
      'attendees': instance.attendanceAttendees,
      'auditDetails': instance.auditDetails,
    };

_$_AttendanceMarkIndividualModel _$$_AttendanceMarkIndividualModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceMarkIndividualModel(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      registerId: json['registerId'] as String?,
      individualId: json['individualId'] as String?,
      enrollmentDate: json['enrollmentDate'] as int?,
      denrollmentDate: json['denrollmentDate'] as int?,
    );

Map<String, dynamic> _$$_AttendanceMarkIndividualModelToJson(
        _$_AttendanceMarkIndividualModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'registerId': instance.registerId,
      'individualId': instance.individualId,
      'enrollmentDate': instance.enrollmentDate,
      'denrollmentDate': instance.denrollmentDate,
    };

_$_AuditDetails _$$_AuditDetailsFromJson(Map<String, dynamic> json) =>
    _$_AuditDetails(
      createdBy: json['createdBy'] as String?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      createdTime: json['createdTime'] as int?,
      lastModifiedTime: json['lastModifiedTime'] as int?,
    );

Map<String, dynamic> _$$_AuditDetailsToJson(_$_AuditDetails instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'lastModifiedBy': instance.lastModifiedBy,
      'createdTime': instance.createdTime,
      'lastModifiedTime': instance.lastModifiedTime,
    };
