// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_attendee_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendeeAttendanceResponseLogImpl
    _$$AttendeeAttendanceResponseLogImplFromJson(Map<String, dynamic> json) =>
        _$AttendeeAttendanceResponseLogImpl(
          id: json['id'] as String?,
          registerId: json['registerId'] as String?,
          individualId: json['individualId'] as String?,
          tenantId: json['tenantId'] as String?,
          time: json['time'] as int? ?? 0,
          type: json['type'] as String?,
          status: json['status'] as String? ?? "INACTIVE",
        );

Map<String, dynamic> _$$AttendeeAttendanceResponseLogImplToJson(
        _$AttendeeAttendanceResponseLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registerId': instance.registerId,
      'individualId': instance.individualId,
      'tenantId': instance.tenantId,
      'time': instance.time,
      'type': instance.type,
      'status': instance.status,
    };
