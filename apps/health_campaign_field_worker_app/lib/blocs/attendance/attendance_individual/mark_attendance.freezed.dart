// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkAttendanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadAttendanceMarkEvent value) uploadAttendance,
    required TResult Function(DisposeAttendanceEvent value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadAttendanceMarkEvent value)? uploadAttendance,
    TResult? Function(DisposeAttendanceEvent value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadAttendanceMarkEvent value)? uploadAttendance,
    TResult Function(DisposeAttendanceEvent value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkAttendanceEventCopyWith<$Res> {
  factory $MarkAttendanceEventCopyWith(
          MarkAttendanceEvent value, $Res Function(MarkAttendanceEvent) then) =
      _$MarkAttendanceEventCopyWithImpl<$Res, MarkAttendanceEvent>;
}

/// @nodoc
class _$MarkAttendanceEventCopyWithImpl<$Res, $Val extends MarkAttendanceEvent>
    implements $MarkAttendanceEventCopyWith<$Res> {
  _$MarkAttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadAttendanceMarkEventImplCopyWith<$Res> {
  factory _$$UploadAttendanceMarkEventImplCopyWith(
          _$UploadAttendanceMarkEventImpl value,
          $Res Function(_$UploadAttendanceMarkEventImpl) then) =
      __$$UploadAttendanceMarkEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int entryTime,
      int exitTime,
      int status,
      String tenantId,
      String registarId,
      String projectId});
}

/// @nodoc
class __$$UploadAttendanceMarkEventImplCopyWithImpl<$Res>
    extends _$MarkAttendanceEventCopyWithImpl<$Res,
        _$UploadAttendanceMarkEventImpl>
    implements _$$UploadAttendanceMarkEventImplCopyWith<$Res> {
  __$$UploadAttendanceMarkEventImplCopyWithImpl(
      _$UploadAttendanceMarkEventImpl _value,
      $Res Function(_$UploadAttendanceMarkEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryTime = null,
    Object? exitTime = null,
    Object? status = null,
    Object? tenantId = null,
    Object? registarId = null,
    Object? projectId = null,
  }) {
    return _then(_$UploadAttendanceMarkEventImpl(
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as int,
      exitTime: null == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      registarId: null == registarId
          ? _value.registarId
          : registarId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadAttendanceMarkEventImpl implements UploadAttendanceMarkEvent {
  _$UploadAttendanceMarkEventImpl(
      {required this.entryTime,
      required this.exitTime,
      required this.status,
      required this.tenantId,
      required this.registarId,
      required this.projectId});

  @override
  final int entryTime;
  @override
  final int exitTime;
  @override
  final int status;
  @override
  final String tenantId;
  @override
  final String registarId;
  @override
  final String projectId;

  @override
  String toString() {
    return 'MarkAttendanceEvent.uploadAttendance(entryTime: $entryTime, exitTime: $exitTime, status: $status, tenantId: $tenantId, registarId: $registarId, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAttendanceMarkEventImpl &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.registarId, registarId) ||
                other.registarId == registarId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entryTime, exitTime, status,
      tenantId, registarId, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAttendanceMarkEventImplCopyWith<_$UploadAttendanceMarkEventImpl>
      get copyWith => __$$UploadAttendanceMarkEventImplCopyWithImpl<
          _$UploadAttendanceMarkEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function() dispose,
  }) {
    return uploadAttendance(
        entryTime, exitTime, status, tenantId, registarId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function()? dispose,
  }) {
    return uploadAttendance?.call(
        entryTime, exitTime, status, tenantId, registarId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (uploadAttendance != null) {
      return uploadAttendance(
          entryTime, exitTime, status, tenantId, registarId, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadAttendanceMarkEvent value) uploadAttendance,
    required TResult Function(DisposeAttendanceEvent value) dispose,
  }) {
    return uploadAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadAttendanceMarkEvent value)? uploadAttendance,
    TResult? Function(DisposeAttendanceEvent value)? dispose,
  }) {
    return uploadAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadAttendanceMarkEvent value)? uploadAttendance,
    TResult Function(DisposeAttendanceEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (uploadAttendance != null) {
      return uploadAttendance(this);
    }
    return orElse();
  }
}

abstract class UploadAttendanceMarkEvent implements MarkAttendanceEvent {
  factory UploadAttendanceMarkEvent(
      {required final int entryTime,
      required final int exitTime,
      required final int status,
      required final String tenantId,
      required final String registarId,
      required final String projectId}) = _$UploadAttendanceMarkEventImpl;

  int get entryTime;
  int get exitTime;
  int get status;
  String get tenantId;
  String get registarId;
  String get projectId;
  @JsonKey(ignore: true)
  _$$UploadAttendanceMarkEventImplCopyWith<_$UploadAttendanceMarkEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeAttendanceEventImplCopyWith<$Res> {
  factory _$$DisposeAttendanceEventImplCopyWith(
          _$DisposeAttendanceEventImpl value,
          $Res Function(_$DisposeAttendanceEventImpl) then) =
      __$$DisposeAttendanceEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeAttendanceEventImplCopyWithImpl<$Res>
    extends _$MarkAttendanceEventCopyWithImpl<$Res,
        _$DisposeAttendanceEventImpl>
    implements _$$DisposeAttendanceEventImplCopyWith<$Res> {
  __$$DisposeAttendanceEventImplCopyWithImpl(
      _$DisposeAttendanceEventImpl _value,
      $Res Function(_$DisposeAttendanceEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeAttendanceEventImpl implements DisposeAttendanceEvent {
  const _$DisposeAttendanceEventImpl();

  @override
  String toString() {
    return 'MarkAttendanceEvent.dispose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisposeAttendanceEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
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
    required TResult Function(UploadAttendanceMarkEvent value) uploadAttendance,
    required TResult Function(DisposeAttendanceEvent value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadAttendanceMarkEvent value)? uploadAttendance,
    TResult? Function(DisposeAttendanceEvent value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadAttendanceMarkEvent value)? uploadAttendance,
    TResult Function(DisposeAttendanceEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class DisposeAttendanceEvent implements MarkAttendanceEvent {
  const factory DisposeAttendanceEvent() = _$DisposeAttendanceEventImpl;
}

/// @nodoc
mixin _$MarkAttendanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool flagStatus, String responseMsg) loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool flagStatus, String responseMsg)? loaded,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool flagStatus, String responseMsg)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkAttendanceStateCopyWith<$Res> {
  factory $MarkAttendanceStateCopyWith(
          MarkAttendanceState value, $Res Function(MarkAttendanceState) then) =
      _$MarkAttendanceStateCopyWithImpl<$Res, MarkAttendanceState>;
}

/// @nodoc
class _$MarkAttendanceStateCopyWithImpl<$Res, $Val extends MarkAttendanceState>
    implements $MarkAttendanceStateCopyWith<$Res> {
  _$MarkAttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MarkAttendanceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'MarkAttendanceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool flagStatus, String responseMsg) loaded,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool flagStatus, String responseMsg)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool flagStatus, String responseMsg)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends MarkAttendanceState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MarkAttendanceStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'MarkAttendanceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool flagStatus, String responseMsg) loaded,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool flagStatus, String responseMsg)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool flagStatus, String responseMsg)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends MarkAttendanceState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool flagStatus, String responseMsg});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MarkAttendanceStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flagStatus = null,
    Object? responseMsg = null,
  }) {
    return _then(_$LoadedImpl(
      flagStatus: null == flagStatus
          ? _value.flagStatus
          : flagStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      responseMsg: null == responseMsg
          ? _value.responseMsg
          : responseMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl({this.flagStatus = false, this.responseMsg = ''})
      : super._();

  @override
  @JsonKey()
  final bool flagStatus;
  @override
  @JsonKey()
  final String responseMsg;

  @override
  String toString() {
    return 'MarkAttendanceState.loaded(flagStatus: $flagStatus, responseMsg: $responseMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.flagStatus, flagStatus) ||
                other.flagStatus == flagStatus) &&
            (identical(other.responseMsg, responseMsg) ||
                other.responseMsg == responseMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flagStatus, responseMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool flagStatus, String responseMsg) loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(flagStatus, responseMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool flagStatus, String responseMsg)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loaded?.call(flagStatus, responseMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool flagStatus, String responseMsg)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(flagStatus, responseMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends MarkAttendanceState {
  const factory _Loaded({final bool flagStatus, final String responseMsg}) =
      _$LoadedImpl;
  const _Loaded._() : super._();

  bool get flagStatus;
  String get responseMsg;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$MarkAttendanceStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.error) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'MarkAttendanceState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool flagStatus, String responseMsg) loaded,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool flagStatus, String responseMsg)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool flagStatus, String responseMsg)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends MarkAttendanceState {
  const factory _Error(final String? error) = _$ErrorImpl;
  const _Error._() : super._();

  String? get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
