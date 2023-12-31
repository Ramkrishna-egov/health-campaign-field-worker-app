import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_row_model.freezed.dart';
part 'attendance_row_model.g.dart';

@freezed
class AttendanceRowModel with _$AttendanceRowModel {
  const factory AttendanceRowModel({
    String? name,
    String? individualId,
    int? entryDate,
    int? existDate,
    String? type,
    @Default(-1) int? status,

    // @JsonKey(name: 'auditDetails') AuditDetails? auditDetails,
  }) = _AttendanceRowModel;

  factory AttendanceRowModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendanceRowModelFromJson(json);
}
