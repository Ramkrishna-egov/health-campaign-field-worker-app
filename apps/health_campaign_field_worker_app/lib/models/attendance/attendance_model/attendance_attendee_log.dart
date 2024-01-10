import 'package:freezed_annotation/freezed_annotation.dart';

import 'attendance_row_model.dart';

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

List<Map<String, dynamic>> createAttendanceLogPayload(
  AttendanceRowModel attendeeList,
  String registerId,
  int entryTime,
  int exitTime,
  String tenantId, {
  bool isAbsent = false,
}) {
  return [
    {
      "registerId": registerId,
      "individualId": attendeeList.individualId,
      "time": entryTime,
      "type": "ENTRY",
      "status": "ACTIVE",
      "tenantId": tenantId,
      "documentIds": []
    },
    {
      "registerId": registerId,
      "individualId": attendeeList.individualId,
      "time": exitTime,
      "type": "EXIT",
      "status": "ACTIVE",
      "tenantId": tenantId,
      "documentIds": []
    },
  ];
}
