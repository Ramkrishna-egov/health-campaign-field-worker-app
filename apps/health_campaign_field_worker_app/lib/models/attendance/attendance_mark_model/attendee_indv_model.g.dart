// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendee_indv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceMarkIndividualModelImpl
    _$$AttendanceMarkIndividualModelImplFromJson(Map<String, dynamic> json) =>
        _$AttendanceMarkIndividualModelImpl(
          attendanceRegister: (json['Individual'] as List<dynamic>?)
              ?.map((e) =>
                  AttendanceMarkIndividual.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AttendanceMarkIndividualModelImplToJson(
        _$AttendanceMarkIndividualModelImpl instance) =>
    <String, dynamic>{
      'Individual': instance.attendanceRegister,
    };

_$AttendanceMarkIndividualImpl _$$AttendanceMarkIndividualImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceMarkIndividualImpl(
      id: json['id'] as String?,
      individualId: json['individualId'] as String?,
      tenantId: json['tenantId'] as String?,
      clientReferenceId: json['clientReferenceId'] as String?,
      name: json['name'] == null
          ? null
          : NameData.fromJson(json['name'] as Map<String, dynamic>),
      userDetails: json['userDetails'] == null
          ? null
          : UserDetails.fromJson(json['userDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceMarkIndividualImplToJson(
        _$AttendanceMarkIndividualImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'individualId': instance.individualId,
      'tenantId': instance.tenantId,
      'clientReferenceId': instance.clientReferenceId,
      'name': instance.name,
      'userDetails': instance.userDetails,
    };

_$NameDataImpl _$$NameDataImplFromJson(Map<String, dynamic> json) =>
    _$NameDataImpl(
      givenName: json['givenName'] as String?,
      familyName: json['familyName'] as String?,
      otherNames: json['otherNames'] as String?,
    );

Map<String, dynamic> _$$NameDataImplToJson(_$NameDataImpl instance) =>
    <String, dynamic>{
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'otherNames': instance.otherNames,
    };

_$UserDetailsImpl _$$UserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsImpl(
      username: json['username'] as String?,
      tenantId: json['tenantId'] as String?,
      type: json['type'] as String?,
      role: (json['roles'] as List<dynamic>?)
          ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserDetailsImplToJson(_$UserDetailsImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'tenantId': instance.tenantId,
      'type': instance.type,
      'roles': instance.role,
    };

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };
