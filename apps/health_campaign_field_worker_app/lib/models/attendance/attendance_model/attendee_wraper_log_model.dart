import 'package:freezed_annotation/freezed_annotation.dart';

import 'attendance_attendee_log.dart';
part 'attendee_wraper_log_model.freezed.dart';
part 'attendee_wraper_log_model.g.dart';

@freezed
class AttendeeLogWrappperResponse with _$AttendeeLogWrappperResponse {
  factory AttendeeLogWrappperResponse({
    @JsonKey(name: "count")
    @Default(0)
        int count,
    @JsonKey(name: "attendance")
        List<AttendeeAttendanceResponseLog>? attendanceAttendeLog,
  }) = _AttendeeLogWrappperResponse;

  factory AttendeeLogWrappperResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendeeLogWrappperResponseFromJson(json);
}
