// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceMarkRegisterModelResponseImpl
    _$$AttendanceMarkRegisterModelResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$AttendanceMarkRegisterModelResponseImpl(
          attendanceRegister: (json['attendanceRegister'] as List<dynamic>?)
              ?.map((e) => AttendanceMarkRegisterModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AttendanceMarkRegisterModelResponseImplToJson(
        _$AttendanceMarkRegisterModelResponseImpl instance) =>
    <String, dynamic>{
      'attendanceRegister': instance.attendanceRegister,
    };

_$AttendanceMarkRegisterModelImpl _$$AttendanceMarkRegisterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceMarkRegisterModelImpl(
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
          ?.map((e) => AttendanceMarkIndividualModelAttendee.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      auditDetails: json['auditDetails'] == null
          ? null
          : AuditDetails.fromJson(json['auditDetails'] as Map<String, dynamic>),
      additionalDetails: json['additionalDetails'] == null
          ? null
          : AdditionalDetails.fromJson(
              json['additionalDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceMarkRegisterModelImplToJson(
        _$AttendanceMarkRegisterModelImpl instance) =>
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
      'additionalDetails': instance.additionalDetails,
    };

_$AttendanceMarkIndividualModelAttendeeImpl
    _$$AttendanceMarkIndividualModelAttendeeImplFromJson(
            Map<String, dynamic> json) =>
        _$AttendanceMarkIndividualModelAttendeeImpl(
          id: json['id'] as String?,
          tenantId: json['tenantId'] as String?,
          registerId: json['registerId'] as String?,
          individualId: json['individualId'] as String?,
          enrollmentDate: json['enrollmentDate'] as int?,
          denrollmentDate: json['denrollmentDate'] as int?,
        );

Map<String, dynamic> _$$AttendanceMarkIndividualModelAttendeeImplToJson(
        _$AttendanceMarkIndividualModelAttendeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'registerId': instance.registerId,
      'individualId': instance.individualId,
      'enrollmentDate': instance.enrollmentDate,
      'denrollmentDate': instance.denrollmentDate,
    };

_$AuditDetailsImpl _$$AuditDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AuditDetailsImpl(
      createdBy: json['createdBy'] as String?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      createdTime: json['createdTime'] as int?,
      lastModifiedTime: json['lastModifiedTime'] as int?,
    );

Map<String, dynamic> _$$AuditDetailsImplToJson(_$AuditDetailsImpl instance) =>
    <String, dynamic>{
      'createdBy': instance.createdBy,
      'lastModifiedBy': instance.lastModifiedBy,
      'createdTime': instance.createdTime,
      'lastModifiedTime': instance.lastModifiedTime,
    };

_$AdditionalDetailsImpl _$$AdditionalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalDetailsImpl(
      description: json['description'] as String?,
      boundary: json['boundary'] as String?,
    );

Map<String, dynamic> _$$AdditionalDetailsImplToJson(
        _$AdditionalDetailsImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'boundary': instance.boundary,
    };
