// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendee_indv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceMarkIndividualModel _$$_AttendanceMarkIndividualModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceMarkIndividualModel(
      attendanceRegister: (json['Individual'] as List<dynamic>?)
          ?.map((e) =>
              AttendanceMarkIndividual.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttendanceMarkIndividualModelToJson(
        _$_AttendanceMarkIndividualModel instance) =>
    <String, dynamic>{
      'Individual': instance.attendanceRegister,
    };

_$_AttendanceMarkIndividual _$$_AttendanceMarkIndividualFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceMarkIndividual(
      id: json['id'] as String?,
      individualId: json['individualId'] as String?,
      tenantId: json['tenantId'] as String?,
      clientReferenceId: json['clientReferenceId'] as String?,
      name: json['name'] == null
          ? null
          : NameData.fromJson(json['name'] as Map<String, dynamic>),
      attendanceRegister: (json['attendanceRegister'] as List<dynamic>?)
          ?.map((e) =>
              AttendanceMarkIndividualModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttendanceMarkIndividualToJson(
        _$_AttendanceMarkIndividual instance) =>
    <String, dynamic>{
      'id': instance.id,
      'individualId': instance.individualId,
      'tenantId': instance.tenantId,
      'clientReferenceId': instance.clientReferenceId,
      'name': instance.name,
      'attendanceRegister': instance.attendanceRegister,
    };

_$_NameData _$$_NameDataFromJson(Map<String, dynamic> json) => _$_NameData(
      givenName: json['givenName'] as String?,
      familyName: json['familyName'] as String?,
      otherNames: json['otherNames'] as String?,
    );

Map<String, dynamic> _$$_NameDataToJson(_$_NameData instance) =>
    <String, dynamic>{
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'otherNames': instance.otherNames,
    };
