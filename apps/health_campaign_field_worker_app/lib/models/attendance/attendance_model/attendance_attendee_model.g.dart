// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_attendee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendeeServerResponse _$$_AttendeeServerResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AttendeeServerResponse(
      count: json['count'] as int? ?? 0,
      attendeeResponseModel: (json['attendeeResponseModel'] as List<dynamic>?)
          ?.map(
              (e) => AttendeeResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttendeeServerResponseToJson(
        _$_AttendeeServerResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'attendeeResponseModel': instance.attendeeResponseModel,
    };

_$_AttendeeResponseModel _$$_AttendeeResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttendeeResponseModel(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      altContactNumber: json['altContactNumber'] as String?,
      email: json['email'] as String?,
      fatherName: json['fatherName'] as String?,
      husbandName: json['husbandName'] as String?,
      name: json['nameModel'] == null
          ? null
          : NameModel.fromJson(json['nameModel'] as Map<String, dynamic>),
      tenantId: json['tenantId'] as String?,
      clientReferenceId: json['clientReferenceId'] as String?,
    );

Map<String, dynamic> _$$_AttendeeResponseModelToJson(
        _$_AttendeeResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'mobileNumber': instance.mobileNumber,
      'altContactNumber': instance.altContactNumber,
      'email': instance.email,
      'fatherName': instance.fatherName,
      'husbandName': instance.husbandName,
      'nameModel': instance.name,
      'tenantId': instance.tenantId,
      'clientReferenceId': instance.clientReferenceId,
    };

_$_NameModel _$$_NameModelFromJson(Map<String, dynamic> json) => _$_NameModel(
      id: json['id'] as String?,
      individualClientReferenceId:
          json['individualClientReferenceId'] as String?,
      givenName: json['givenName'] as String?,
      familyName: json['familyName'] as String?,
      otherNames: json['otherNames'] as String?,
      nonRecoverableError: json['nonRecoverableError'] as bool?,
      tenantId: json['tenantId'] as String?,
      rowVersion: json['rowVersion'] as int?,
    );

Map<String, dynamic> _$$_NameModelToJson(_$_NameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'individualClientReferenceId': instance.individualClientReferenceId,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'otherNames': instance.otherNames,
      'nonRecoverableError': instance.nonRecoverableError,
      'tenantId': instance.tenantId,
      'rowVersion': instance.rowVersion,
    };
