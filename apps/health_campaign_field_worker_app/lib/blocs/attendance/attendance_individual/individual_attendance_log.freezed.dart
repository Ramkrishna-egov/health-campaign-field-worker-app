// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'individual_attendance_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttendanceIndividualEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)
        individualAttendanceLogSearch,
    required TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)
        individualAttendanceMark,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult? Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceIndividualLogSearchEvent value)
        individualAttendanceLogSearch,
    required TResult Function(AttendanceMarkEvent value)
        individualAttendanceMark,
    required TResult Function(DisposeAttendanceIndividualEvent value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult? Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult? Function(DisposeAttendanceIndividualEvent value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult Function(DisposeAttendanceIndividualEvent value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceIndividualEventCopyWith<$Res> {
  factory $AttendanceIndividualEventCopyWith(AttendanceIndividualEvent value,
          $Res Function(AttendanceIndividualEvent) then) =
      _$AttendanceIndividualEventCopyWithImpl<$Res, AttendanceIndividualEvent>;
}

/// @nodoc
class _$AttendanceIndividualEventCopyWithImpl<$Res,
        $Val extends AttendanceIndividualEvent>
    implements $AttendanceIndividualEventCopyWith<$Res> {
  _$AttendanceIndividualEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AttendanceIndividualLogSearchEventCopyWith<$Res> {
  factory _$$AttendanceIndividualLogSearchEventCopyWith(
          _$AttendanceIndividualLogSearchEvent value,
          $Res Function(_$AttendanceIndividualLogSearchEvent) then) =
      __$$AttendanceIndividualLogSearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String registerId,
      String tenantId,
      List<String> attendeeId,
      int offset,
      int limit});
}

/// @nodoc
class __$$AttendanceIndividualLogSearchEventCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res,
        _$AttendanceIndividualLogSearchEvent>
    implements _$$AttendanceIndividualLogSearchEventCopyWith<$Res> {
  __$$AttendanceIndividualLogSearchEventCopyWithImpl(
      _$AttendanceIndividualLogSearchEvent _value,
      $Res Function(_$AttendanceIndividualLogSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerId = null,
    Object? tenantId = null,
    Object? attendeeId = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$AttendanceIndividualLogSearchEvent(
      registerId: null == registerId
          ? _value.registerId
          : registerId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      attendeeId: null == attendeeId
          ? _value._attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AttendanceIndividualLogSearchEvent
    implements AttendanceIndividualLogSearchEvent {
  const _$AttendanceIndividualLogSearchEvent(
      {this.registerId = '',
      this.tenantId = '',
      required final List<String> attendeeId,
      required this.offset,
      required this.limit})
      : _attendeeId = attendeeId;

  @override
  @JsonKey()
  final String registerId;
  @override
  @JsonKey()
  final String tenantId;
  final List<String> _attendeeId;
  @override
  List<String> get attendeeId {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendeeId);
  }

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'AttendanceIndividualEvent.individualAttendanceLogSearch(registerId: $registerId, tenantId: $tenantId, attendeeId: $attendeeId, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceIndividualLogSearchEvent &&
            (identical(other.registerId, registerId) ||
                other.registerId == registerId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            const DeepCollectionEquality()
                .equals(other._attendeeId, _attendeeId) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerId, tenantId,
      const DeepCollectionEquality().hash(_attendeeId), offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceIndividualLogSearchEventCopyWith<
          _$AttendanceIndividualLogSearchEvent>
      get copyWith => __$$AttendanceIndividualLogSearchEventCopyWithImpl<
          _$AttendanceIndividualLogSearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)
        individualAttendanceLogSearch,
    required TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)
        individualAttendanceMark,
    required TResult Function() dispose,
  }) {
    return individualAttendanceLogSearch(
        registerId, tenantId, attendeeId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult? Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult? Function()? dispose,
  }) {
    return individualAttendanceLogSearch?.call(
        registerId, tenantId, attendeeId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (individualAttendanceLogSearch != null) {
      return individualAttendanceLogSearch(
          registerId, tenantId, attendeeId, offset, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceIndividualLogSearchEvent value)
        individualAttendanceLogSearch,
    required TResult Function(AttendanceMarkEvent value)
        individualAttendanceMark,
    required TResult Function(DisposeAttendanceIndividualEvent value) dispose,
  }) {
    return individualAttendanceLogSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult? Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult? Function(DisposeAttendanceIndividualEvent value)? dispose,
  }) {
    return individualAttendanceLogSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult Function(DisposeAttendanceIndividualEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (individualAttendanceLogSearch != null) {
      return individualAttendanceLogSearch(this);
    }
    return orElse();
  }
}

abstract class AttendanceIndividualLogSearchEvent
    implements AttendanceIndividualEvent {
  const factory AttendanceIndividualLogSearchEvent(
      {final String registerId,
      final String tenantId,
      required final List<String> attendeeId,
      required final int offset,
      required final int limit}) = _$AttendanceIndividualLogSearchEvent;

  String get registerId;
  String get tenantId;
  List<String> get attendeeId;
  int get offset;
  int get limit;
  @JsonKey(ignore: true)
  _$$AttendanceIndividualLogSearchEventCopyWith<
          _$AttendanceIndividualLogSearchEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceMarkEventCopyWith<$Res> {
  factory _$$AttendanceMarkEventCopyWith(_$AttendanceMarkEvent value,
          $Res Function(_$AttendanceMarkEvent) then) =
      __$$AttendanceMarkEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int entryTime,
      int exitTime,
      dynamic status,
      String individualId,
      String registarId});
}

/// @nodoc
class __$$AttendanceMarkEventCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res, _$AttendanceMarkEvent>
    implements _$$AttendanceMarkEventCopyWith<$Res> {
  __$$AttendanceMarkEventCopyWithImpl(
      _$AttendanceMarkEvent _value, $Res Function(_$AttendanceMarkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryTime = null,
    Object? exitTime = null,
    Object? status = null,
    Object? individualId = null,
    Object? registarId = null,
  }) {
    return _then(_$AttendanceMarkEvent(
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as int,
      exitTime: null == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status ? _value.status : status,
      individualId: null == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String,
      registarId: null == registarId
          ? _value.registarId
          : registarId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AttendanceMarkEvent implements AttendanceMarkEvent {
  const _$AttendanceMarkEvent(
      {this.entryTime = 0,
      this.exitTime = 0,
      this.status = -1,
      required this.individualId,
      required this.registarId});

  @override
  @JsonKey()
  final int entryTime;
  @override
  @JsonKey()
  final int exitTime;
  @override
  @JsonKey()
  final dynamic status;
  @override
  final String individualId;
  @override
  final String registarId;

  @override
  String toString() {
    return 'AttendanceIndividualEvent.individualAttendanceMark(entryTime: $entryTime, exitTime: $exitTime, status: $status, individualId: $individualId, registarId: $registarId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMarkEvent &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.individualId, individualId) ||
                other.individualId == individualId) &&
            (identical(other.registarId, registarId) ||
                other.registarId == registarId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entryTime, exitTime,
      const DeepCollectionEquality().hash(status), individualId, registarId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceMarkEventCopyWith<_$AttendanceMarkEvent> get copyWith =>
      __$$AttendanceMarkEventCopyWithImpl<_$AttendanceMarkEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)
        individualAttendanceLogSearch,
    required TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)
        individualAttendanceMark,
    required TResult Function() dispose,
  }) {
    return individualAttendanceMark(
        entryTime, exitTime, status, individualId, registarId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult? Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult? Function()? dispose,
  }) {
    return individualAttendanceMark?.call(
        entryTime, exitTime, status, individualId, registarId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (individualAttendanceMark != null) {
      return individualAttendanceMark(
          entryTime, exitTime, status, individualId, registarId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceIndividualLogSearchEvent value)
        individualAttendanceLogSearch,
    required TResult Function(AttendanceMarkEvent value)
        individualAttendanceMark,
    required TResult Function(DisposeAttendanceIndividualEvent value) dispose,
  }) {
    return individualAttendanceMark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult? Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult? Function(DisposeAttendanceIndividualEvent value)? dispose,
  }) {
    return individualAttendanceMark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult Function(DisposeAttendanceIndividualEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (individualAttendanceMark != null) {
      return individualAttendanceMark(this);
    }
    return orElse();
  }
}

abstract class AttendanceMarkEvent implements AttendanceIndividualEvent {
  const factory AttendanceMarkEvent(
      {final int entryTime,
      final int exitTime,
      final dynamic status,
      required final String individualId,
      required final String registarId}) = _$AttendanceMarkEvent;

  int get entryTime;
  int get exitTime;
  dynamic get status;
  String get individualId;
  String get registarId;
  @JsonKey(ignore: true)
  _$$AttendanceMarkEventCopyWith<_$AttendanceMarkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeAttendanceIndividualEventCopyWith<$Res> {
  factory _$$DisposeAttendanceIndividualEventCopyWith(
          _$DisposeAttendanceIndividualEvent value,
          $Res Function(_$DisposeAttendanceIndividualEvent) then) =
      __$$DisposeAttendanceIndividualEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeAttendanceIndividualEventCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res,
        _$DisposeAttendanceIndividualEvent>
    implements _$$DisposeAttendanceIndividualEventCopyWith<$Res> {
  __$$DisposeAttendanceIndividualEventCopyWithImpl(
      _$DisposeAttendanceIndividualEvent _value,
      $Res Function(_$DisposeAttendanceIndividualEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeAttendanceIndividualEvent
    implements DisposeAttendanceIndividualEvent {
  const _$DisposeAttendanceIndividualEvent();

  @override
  String toString() {
    return 'AttendanceIndividualEvent.dispose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisposeAttendanceIndividualEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)
        individualAttendanceLogSearch,
    required TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)
        individualAttendanceMark,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult? Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String registerId, String tenantId,
            List<String> attendeeId, int offset, int limit)?
        individualAttendanceLogSearch,
    TResult Function(int entryTime, int exitTime, dynamic status,
            String individualId, String registarId)?
        individualAttendanceMark,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceIndividualLogSearchEvent value)
        individualAttendanceLogSearch,
    required TResult Function(AttendanceMarkEvent value)
        individualAttendanceMark,
    required TResult Function(DisposeAttendanceIndividualEvent value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult? Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult? Function(DisposeAttendanceIndividualEvent value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult Function(DisposeAttendanceIndividualEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class DisposeAttendanceIndividualEvent
    implements AttendanceIndividualEvent {
  const factory DisposeAttendanceIndividualEvent() =
      _$DisposeAttendanceIndividualEvent;
}

/// @nodoc
mixin _$AttendanceIndividualState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AttendanceRowModel>? attendanceRowModelList)
        loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AttendanceRowModelLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AttendanceRowModelLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AttendanceRowModelLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceIndividualStateCopyWith<$Res> {
  factory $AttendanceIndividualStateCopyWith(AttendanceIndividualState value,
          $Res Function(AttendanceIndividualState) then) =
      _$AttendanceIndividualStateCopyWithImpl<$Res, AttendanceIndividualState>;
}

/// @nodoc
class _$AttendanceIndividualStateCopyWithImpl<$Res,
        $Val extends AttendanceIndividualState>
    implements $AttendanceIndividualStateCopyWith<$Res> {
  _$AttendanceIndividualStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AttendanceIndividualStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'AttendanceIndividualState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AttendanceRowModel>? attendanceRowModelList)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AttendanceRowModelLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AttendanceRowModelLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AttendanceRowModelLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AttendanceIndividualState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AttendanceIndividualStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'AttendanceIndividualState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AttendanceRowModel>? attendanceRowModelList)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AttendanceRowModelLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AttendanceRowModelLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AttendanceRowModelLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AttendanceIndividualState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_AttendanceRowModelLoadedCopyWith<$Res> {
  factory _$$_AttendanceRowModelLoadedCopyWith(
          _$_AttendanceRowModelLoaded value,
          $Res Function(_$_AttendanceRowModelLoaded) then) =
      __$$_AttendanceRowModelLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AttendanceRowModel>? attendanceRowModelList});
}

/// @nodoc
class __$$_AttendanceRowModelLoadedCopyWithImpl<$Res>
    extends _$AttendanceIndividualStateCopyWithImpl<$Res,
        _$_AttendanceRowModelLoaded>
    implements _$$_AttendanceRowModelLoadedCopyWith<$Res> {
  __$$_AttendanceRowModelLoadedCopyWithImpl(_$_AttendanceRowModelLoaded _value,
      $Res Function(_$_AttendanceRowModelLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRowModelList = freezed,
  }) {
    return _then(_$_AttendanceRowModelLoaded(
      freezed == attendanceRowModelList
          ? _value._attendanceRowModelList
          : attendanceRowModelList // ignore: cast_nullable_to_non_nullable
              as List<AttendanceRowModel>?,
    ));
  }
}

/// @nodoc

class _$_AttendanceRowModelLoaded extends _AttendanceRowModelLoaded {
  const _$_AttendanceRowModelLoaded(
      final List<AttendanceRowModel>? attendanceRowModelList)
      : _attendanceRowModelList = attendanceRowModelList,
        super._();

  final List<AttendanceRowModel>? _attendanceRowModelList;
  @override
  List<AttendanceRowModel>? get attendanceRowModelList {
    final value = _attendanceRowModelList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttendanceIndividualState.loaded(attendanceRowModelList: $attendanceRowModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceRowModelLoaded &&
            const DeepCollectionEquality().equals(
                other._attendanceRowModelList, _attendanceRowModelList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_attendanceRowModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceRowModelLoadedCopyWith<_$_AttendanceRowModelLoaded>
      get copyWith => __$$_AttendanceRowModelLoadedCopyWithImpl<
          _$_AttendanceRowModelLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AttendanceRowModel>? attendanceRowModelList)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(attendanceRowModelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loaded?.call(attendanceRowModelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(attendanceRowModelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AttendanceRowModelLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AttendanceRowModelLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AttendanceRowModelLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AttendanceRowModelLoaded extends AttendanceIndividualState {
  const factory _AttendanceRowModelLoaded(
          final List<AttendanceRowModel>? attendanceRowModelList) =
      _$_AttendanceRowModelLoaded;
  const _AttendanceRowModelLoaded._() : super._();

  List<AttendanceRowModel>? get attendanceRowModelList;
  @JsonKey(ignore: true)
  _$$_AttendanceRowModelLoadedCopyWith<_$_AttendanceRowModelLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AttendanceIndividualStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(this.error) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'AttendanceIndividualState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AttendanceRowModel>? attendanceRowModelList)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AttendanceRowModel>? attendanceRowModelList)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AttendanceRowModelLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AttendanceRowModelLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AttendanceRowModelLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends AttendanceIndividualState {
  const factory _Error(final String? error) = _$_Error;
  const _Error._() : super._();

  String? get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
