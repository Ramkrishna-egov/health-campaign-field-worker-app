// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_collection_attendee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendeeCollectionModelImpl _$$AttendeeCollectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendeeCollectionModelImpl(
      userName: json['userName'] as String?,
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      id: json['id'] as int?,
      registerId: json['registerId'] as String?,
      individualId: json['individualId'] as String?,
      tenantId: json['tenantId'] as String?,
      entryTime: json['entryTime'] as int? ?? 0,
      exitTime: json['exitTime'] as int? ?? 0,
      eventStartDate: json['eventStartDate'] as int? ?? 0,
      eventEndDate: json['eventEndDate'] as int? ?? 0,
      type: json['type'] as String?,
      status: json['status'] as int? ?? -1,
      uploadToServer: json['uploadToServer'] as bool,
    );

Map<String, dynamic> _$$AttendeeCollectionModelImplToJson(
        _$AttendeeCollectionModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'name': instance.name,
      'lastName': instance.lastName,
      'id': instance.id,
      'registerId': instance.registerId,
      'individualId': instance.individualId,
      'tenantId': instance.tenantId,
      'entryTime': instance.entryTime,
      'exitTime': instance.exitTime,
      'eventStartDate': instance.eventStartDate,
      'eventEndDate': instance.eventEndDate,
      'type': instance.type,
      'status': instance.status,
      'uploadToServer': instance.uploadToServer,
    };
