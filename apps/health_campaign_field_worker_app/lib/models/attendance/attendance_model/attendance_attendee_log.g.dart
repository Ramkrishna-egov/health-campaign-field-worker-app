// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_attendee_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendeeAttendanceResponseLog _$$_AttendeeAttendanceResponseLogFromJson(
        Map<String, dynamic> json) =>
    _$_AttendeeAttendanceResponseLog(
      id: json['id'] as String?,
      registerId: json['registerId'] as String?,
      individualId: json['individualId'] as String?,
      tenantId: json['tenantId'] as String?,
      time: json['time'] as int? ?? 0,
      type: json['type'] as String?,
      status: json['status'] as String? ?? "INACTIVE",
    );

Map<String, dynamic> _$$_AttendeeAttendanceResponseLogToJson(
        _$_AttendeeAttendanceResponseLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registerId': instance.registerId,
      'individualId': instance.individualId,
      'tenantId': instance.tenantId,
      'time': instance.time,
      'type': instance.type,
      'status': instance.status,
    };
