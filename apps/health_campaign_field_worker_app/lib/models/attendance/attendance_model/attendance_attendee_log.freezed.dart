// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_attendee_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendeeAttendanceResponseLog _$AttendeeAttendanceResponseLogFromJson(
    Map<String, dynamic> json) {
  return _AttendeeAttendanceResponseLog.fromJson(json);
}

/// @nodoc
mixin _$AttendeeAttendanceResponseLog {
  String? get id => throw _privateConstructorUsedError;
  String? get registerId => throw _privateConstructorUsedError;
  String? get individualId => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendeeAttendanceResponseLogCopyWith<AttendeeAttendanceResponseLog>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeAttendanceResponseLogCopyWith<$Res> {
  factory $AttendeeAttendanceResponseLogCopyWith(
          AttendeeAttendanceResponseLog value,
          $Res Function(AttendeeAttendanceResponseLog) then) =
      _$AttendeeAttendanceResponseLogCopyWithImpl<$Res,
          AttendeeAttendanceResponseLog>;
  @useResult
  $Res call(
      {String? id,
      String? registerId,
      String? individualId,
      String? tenantId,
      int time,
      String? type,
      String status});
}

/// @nodoc
class _$AttendeeAttendanceResponseLogCopyWithImpl<$Res,
        $Val extends AttendeeAttendanceResponseLog>
    implements $AttendeeAttendanceResponseLogCopyWith<$Res> {
  _$AttendeeAttendanceResponseLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registerId = freezed,
    Object? individualId = freezed,
    Object? tenantId = freezed,
    Object? time = null,
    Object? type = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      registerId: freezed == registerId
          ? _value.registerId
          : registerId // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendeeAttendanceResponseLogImplCopyWith<$Res>
    implements $AttendeeAttendanceResponseLogCopyWith<$Res> {
  factory _$$AttendeeAttendanceResponseLogImplCopyWith(
          _$AttendeeAttendanceResponseLogImpl value,
          $Res Function(_$AttendeeAttendanceResponseLogImpl) then) =
      __$$AttendeeAttendanceResponseLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? registerId,
      String? individualId,
      String? tenantId,
      int time,
      String? type,
      String status});
}

/// @nodoc
class __$$AttendeeAttendanceResponseLogImplCopyWithImpl<$Res>
    extends _$AttendeeAttendanceResponseLogCopyWithImpl<$Res,
        _$AttendeeAttendanceResponseLogImpl>
    implements _$$AttendeeAttendanceResponseLogImplCopyWith<$Res> {
  __$$AttendeeAttendanceResponseLogImplCopyWithImpl(
      _$AttendeeAttendanceResponseLogImpl _value,
      $Res Function(_$AttendeeAttendanceResponseLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registerId = freezed,
    Object? individualId = freezed,
    Object? tenantId = freezed,
    Object? time = null,
    Object? type = freezed,
    Object? status = null,
  }) {
    return _then(_$AttendeeAttendanceResponseLogImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      registerId: freezed == registerId
          ? _value.registerId
          : registerId // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendeeAttendanceResponseLogImpl
    implements _AttendeeAttendanceResponseLog {
  const _$AttendeeAttendanceResponseLogImpl(
      {this.id,
      this.registerId,
      this.individualId,
      this.tenantId,
      this.time = 0,
      this.type,
      this.status = "INACTIVE"});

  factory _$AttendeeAttendanceResponseLogImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendeeAttendanceResponseLogImplFromJson(json);

  @override
  final String? id;
  @override
  final String? registerId;
  @override
  final String? individualId;
  @override
  final String? tenantId;
  @override
  @JsonKey()
  final int time;
  @override
  final String? type;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'AttendeeAttendanceResponseLog(id: $id, registerId: $registerId, individualId: $individualId, tenantId: $tenantId, time: $time, type: $type, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeAttendanceResponseLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.registerId, registerId) ||
                other.registerId == registerId) &&
            (identical(other.individualId, individualId) ||
                other.individualId == individualId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, registerId, individualId, tenantId, time, type, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeAttendanceResponseLogImplCopyWith<
          _$AttendeeAttendanceResponseLogImpl>
      get copyWith => __$$AttendeeAttendanceResponseLogImplCopyWithImpl<
          _$AttendeeAttendanceResponseLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendeeAttendanceResponseLogImplToJson(
      this,
    );
  }
}

abstract class _AttendeeAttendanceResponseLog
    implements AttendeeAttendanceResponseLog {
  const factory _AttendeeAttendanceResponseLog(
      {final String? id,
      final String? registerId,
      final String? individualId,
      final String? tenantId,
      final int time,
      final String? type,
      final String status}) = _$AttendeeAttendanceResponseLogImpl;

  factory _AttendeeAttendanceResponseLog.fromJson(Map<String, dynamic> json) =
      _$AttendeeAttendanceResponseLogImpl.fromJson;

  @override
  String? get id;
  @override
  String? get registerId;
  @override
  String? get individualId;
  @override
  String? get tenantId;
  @override
  int get time;
  @override
  String? get type;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$AttendeeAttendanceResponseLogImplCopyWith<
          _$AttendeeAttendanceResponseLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}
