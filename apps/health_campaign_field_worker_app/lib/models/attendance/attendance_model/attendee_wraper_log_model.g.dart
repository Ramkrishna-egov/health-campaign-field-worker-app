// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendee_wraper_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendeeLogWrappperResponse _$$_AttendeeLogWrappperResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AttendeeLogWrappperResponse(
      count: json['count'] as int? ?? 0,
      attendanceAttendeLog: (json['attendance'] as List<dynamic>?)
          ?.map((e) =>
              AttendeeAttendanceResponseLog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttendeeLogWrappperResponseToJson(
        _$_AttendeeLogWrappperResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'attendance': instance.attendanceAttendeLog,
    };