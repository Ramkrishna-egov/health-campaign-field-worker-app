// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendee_wraper_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendeeLogWrappperResponse _$AttendeeLogWrappperResponseFromJson(
    Map<String, dynamic> json) {
  return _AttendeeLogWrappperResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendeeLogWrappperResponse {
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "attendance")
  List<AttendeeAttendanceResponseLog>? get attendanceAttendeLog =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendeeLogWrappperResponseCopyWith<AttendeeLogWrappperResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeLogWrappperResponseCopyWith<$Res> {
  factory $AttendeeLogWrappperResponseCopyWith(
          AttendeeLogWrappperResponse value,
          $Res Function(AttendeeLogWrappperResponse) then) =
      _$AttendeeLogWrappperResponseCopyWithImpl<$Res,
          AttendeeLogWrappperResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "count")
          int count,
      @JsonKey(name: "attendance")
          List<AttendeeAttendanceResponseLog>? attendanceAttendeLog});
}

/// @nodoc
class _$AttendeeLogWrappperResponseCopyWithImpl<$Res,
        $Val extends AttendeeLogWrappperResponse>
    implements $AttendeeLogWrappperResponseCopyWith<$Res> {
  _$AttendeeLogWrappperResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? attendanceAttendeLog = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceAttendeLog: freezed == attendanceAttendeLog
          ? _value.attendanceAttendeLog
          : attendanceAttendeLog // ignore: cast_nullable_to_non_nullable
              as List<AttendeeAttendanceResponseLog>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendeeLogWrappperResponseCopyWith<$Res>
    implements $AttendeeLogWrappperResponseCopyWith<$Res> {
  factory _$$_AttendeeLogWrappperResponseCopyWith(
          _$_AttendeeLogWrappperResponse value,
          $Res Function(_$_AttendeeLogWrappperResponse) then) =
      __$$_AttendeeLogWrappperResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "count")
          int count,
      @JsonKey(name: "attendance")
          List<AttendeeAttendanceResponseLog>? attendanceAttendeLog});
}

/// @nodoc
class __$$_AttendeeLogWrappperResponseCopyWithImpl<$Res>
    extends _$AttendeeLogWrappperResponseCopyWithImpl<$Res,
        _$_AttendeeLogWrappperResponse>
    implements _$$_AttendeeLogWrappperResponseCopyWith<$Res> {
  __$$_AttendeeLogWrappperResponseCopyWithImpl(
      _$_AttendeeLogWrappperResponse _value,
      $Res Function(_$_AttendeeLogWrappperResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? attendanceAttendeLog = freezed,
  }) {
    return _then(_$_AttendeeLogWrappperResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceAttendeLog: freezed == attendanceAttendeLog
          ? _value._attendanceAttendeLog
          : attendanceAttendeLog // ignore: cast_nullable_to_non_nullable
              as List<AttendeeAttendanceResponseLog>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendeeLogWrappperResponse implements _AttendeeLogWrappperResponse {
  _$_AttendeeLogWrappperResponse(
      {@JsonKey(name: "count")
          this.count = 0,
      @JsonKey(name: "attendance")
          final List<AttendeeAttendanceResponseLog>? attendanceAttendeLog})
      : _attendanceAttendeLog = attendanceAttendeLog;

  factory _$_AttendeeLogWrappperResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AttendeeLogWrappperResponseFromJson(json);

  @override
  @JsonKey(name: "count")
  final int count;
  final List<AttendeeAttendanceResponseLog>? _attendanceAttendeLog;
  @override
  @JsonKey(name: "attendance")
  List<AttendeeAttendanceResponseLog>? get attendanceAttendeLog {
    final value = _attendanceAttendeLog;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttendeeLogWrappperResponse(count: $count, attendanceAttendeLog: $attendanceAttendeLog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendeeLogWrappperResponse &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._attendanceAttendeLog, _attendanceAttendeLog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count,
      const DeepCollectionEquality().hash(_attendanceAttendeLog));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendeeLogWrappperResponseCopyWith<_$_AttendeeLogWrappperResponse>
      get copyWith => __$$_AttendeeLogWrappperResponseCopyWithImpl<
          _$_AttendeeLogWrappperResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendeeLogWrappperResponseToJson(
      this,
    );
  }
}

abstract class _AttendeeLogWrappperResponse
    implements AttendeeLogWrappperResponse {
  factory _AttendeeLogWrappperResponse(
      {@JsonKey(name: "count")
          final int count,
      @JsonKey(name: "attendance")
          final List<AttendeeAttendanceResponseLog>?
              attendanceAttendeLog}) = _$_AttendeeLogWrappperResponse;

  factory _AttendeeLogWrappperResponse.fromJson(Map<String, dynamic> json) =
      _$_AttendeeLogWrappperResponse.fromJson;

  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(name: "attendance")
  List<AttendeeAttendanceResponseLog>? get attendanceAttendeLog;
  @override
  @JsonKey(ignore: true)
  _$$_AttendeeLogWrappperResponseCopyWith<_$_AttendeeLogWrappperResponse>
      get copyWith => throw _privateConstructorUsedError;
}
