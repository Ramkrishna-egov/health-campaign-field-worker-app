// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_row_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceRowModelImpl _$$AttendanceRowModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceRowModelImpl(
      name: json['name'] as String?,
      individualId: json['individualId'] as String?,
      entryDate: json['entryDate'] as int?,
      existDate: json['existDate'] as int?,
      type: json['type'] as String?,
      status: json['status'] as int? ?? -1,
    );

Map<String, dynamic> _$$AttendanceRowModelImplToJson(
        _$AttendanceRowModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'individualId': instance.individualId,
      'entryDate': instance.entryDate,
      'existDate': instance.existDate,
      'type': instance.type,
      'status': instance.status,
    };
