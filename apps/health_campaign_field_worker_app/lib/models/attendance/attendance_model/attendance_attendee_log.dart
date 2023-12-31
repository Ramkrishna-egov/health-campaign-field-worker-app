import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_attendee_log.freezed.dart';
part 'attendance_attendee_log.g.dart';

@freezed
class AttendeeAttendanceResponseLog with _$AttendeeAttendanceResponseLog {
  const factory AttendeeAttendanceResponseLog({
    String? id,
    String? registerId,
    String? individualId,
    String? tenantId,
    @Default(0) int time,
    String? type,
    @Default("INACTIVE") String status,
  }) = _AttendeeAttendanceResponseLog;

  factory AttendeeAttendanceResponseLog.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendeeAttendanceResponseLogFromJson(json);
}
