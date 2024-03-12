// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendee_wraper_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendeeLogWrappperResponseImpl _$$AttendeeLogWrappperResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendeeLogWrappperResponseImpl(
      count: json['count'] as int? ?? 0,
      attendanceAttendeLog: (json['attendance'] as List<dynamic>?)
          ?.map((e) =>
              AttendeeAttendanceResponseLog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AttendeeLogWrappperResponseImplToJson(
        _$AttendeeLogWrappperResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'attendance': instance.attendanceAttendeLog,
    };
