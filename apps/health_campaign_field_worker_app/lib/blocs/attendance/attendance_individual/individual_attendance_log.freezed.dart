// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'individual_attendance_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendanceIndividualEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceLogSearch,
    required TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceMark,
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function(int entryTime, int exitTime, String name,
            String tenantId, String registarId, String projectId)
        searchAttendees,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult? Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
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
    required TResult Function(UploadAttendanceEvent value) uploadAttendance,
    required TResult Function(SearchAttendeesEvent value) searchAttendees,
    required TResult Function(DisposeAttendanceIndividualEvent value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult? Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult? Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult? Function(SearchAttendeesEvent value)? searchAttendees,
    TResult? Function(DisposeAttendanceIndividualEvent value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult Function(SearchAttendeesEvent value)? searchAttendees,
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
abstract class _$$AttendanceIndividualLogSearchEventImplCopyWith<$Res> {
  factory _$$AttendanceIndividualLogSearchEventImplCopyWith(
          _$AttendanceIndividualLogSearchEventImpl value,
          $Res Function(_$AttendanceIndividualLogSearchEventImpl) then) =
      __$$AttendanceIndividualLogSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String registerId,
      String tenantId,
      int entryTime,
      int exitTime,
      int currentDate,
      String projectId,
      List<String> attendeeId,
      int offset,
      int limit,
      int eventStartDate,
      int eventEndDate});
}

/// @nodoc
class __$$AttendanceIndividualLogSearchEventImplCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res,
        _$AttendanceIndividualLogSearchEventImpl>
    implements _$$AttendanceIndividualLogSearchEventImplCopyWith<$Res> {
  __$$AttendanceIndividualLogSearchEventImplCopyWithImpl(
      _$AttendanceIndividualLogSearchEventImpl _value,
      $Res Function(_$AttendanceIndividualLogSearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerId = null,
    Object? tenantId = null,
    Object? entryTime = null,
    Object? exitTime = null,
    Object? currentDate = null,
    Object? projectId = null,
    Object? attendeeId = null,
    Object? offset = null,
    Object? limit = null,
    Object? eventStartDate = null,
    Object? eventEndDate = null,
  }) {
    return _then(_$AttendanceIndividualLogSearchEventImpl(
      registerId: null == registerId
          ? _value.registerId
          : registerId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as int,
      exitTime: null == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as int,
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as int,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
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
      eventStartDate: null == eventStartDate
          ? _value.eventStartDate
          : eventStartDate // ignore: cast_nullable_to_non_nullable
              as int,
      eventEndDate: null == eventEndDate
          ? _value.eventEndDate
          : eventEndDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AttendanceIndividualLogSearchEventImpl
    implements AttendanceIndividualLogSearchEvent {
  const _$AttendanceIndividualLogSearchEventImpl(
      {required this.registerId,
      required this.tenantId,
      required this.entryTime,
      required this.exitTime,
      required this.currentDate,
      required this.projectId,
      required final List<String> attendeeId,
      required this.offset,
      required this.limit,
      required this.eventStartDate,
      required this.eventEndDate})
      : _attendeeId = attendeeId;

  @override
  final String registerId;
  @override
  final String tenantId;
  @override
  final int entryTime;
  @override
  final int exitTime;
  @override
  final int currentDate;
  @override
  final String projectId;
  final List<String> _attendeeId;
  @override
  List<String> get attendeeId {
    if (_attendeeId is EqualUnmodifiableListView) return _attendeeId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendeeId);
  }

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int eventStartDate;
  @override
  final int eventEndDate;

  @override
  String toString() {
    return 'AttendanceIndividualEvent.individualAttendanceLogSearch(registerId: $registerId, tenantId: $tenantId, entryTime: $entryTime, exitTime: $exitTime, currentDate: $currentDate, projectId: $projectId, attendeeId: $attendeeId, offset: $offset, limit: $limit, eventStartDate: $eventStartDate, eventEndDate: $eventEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceIndividualLogSearchEventImpl &&
            (identical(other.registerId, registerId) ||
                other.registerId == registerId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            const DeepCollectionEquality()
                .equals(other._attendeeId, _attendeeId) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.eventStartDate, eventStartDate) ||
                other.eventStartDate == eventStartDate) &&
            (identical(other.eventEndDate, eventEndDate) ||
                other.eventEndDate == eventEndDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      registerId,
      tenantId,
      entryTime,
      exitTime,
      currentDate,
      projectId,
      const DeepCollectionEquality().hash(_attendeeId),
      offset,
      limit,
      eventStartDate,
      eventEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceIndividualLogSearchEventImplCopyWith<
          _$AttendanceIndividualLogSearchEventImpl>
      get copyWith => __$$AttendanceIndividualLogSearchEventImplCopyWithImpl<
          _$AttendanceIndividualLogSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceLogSearch,
    required TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceMark,
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function(int entryTime, int exitTime, String name,
            String tenantId, String registarId, String projectId)
        searchAttendees,
    required TResult Function() dispose,
  }) {
    return individualAttendanceLogSearch(
        registerId,
        tenantId,
        entryTime,
        exitTime,
        currentDate,
        projectId,
        attendeeId,
        offset,
        limit,
        eventStartDate,
        eventEndDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult? Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult? Function()? dispose,
  }) {
    return individualAttendanceLogSearch?.call(
        registerId,
        tenantId,
        entryTime,
        exitTime,
        currentDate,
        projectId,
        attendeeId,
        offset,
        limit,
        eventStartDate,
        eventEndDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (individualAttendanceLogSearch != null) {
      return individualAttendanceLogSearch(
          registerId,
          tenantId,
          entryTime,
          exitTime,
          currentDate,
          projectId,
          attendeeId,
          offset,
          limit,
          eventStartDate,
          eventEndDate);
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
    required TResult Function(UploadAttendanceEvent value) uploadAttendance,
    required TResult Function(SearchAttendeesEvent value) searchAttendees,
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
    TResult? Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult? Function(SearchAttendeesEvent value)? searchAttendees,
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
    TResult Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult Function(SearchAttendeesEvent value)? searchAttendees,
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
          {required final String registerId,
          required final String tenantId,
          required final int entryTime,
          required final int exitTime,
          required final int currentDate,
          required final String projectId,
          required final List<String> attendeeId,
          required final int offset,
          required final int limit,
          required final int eventStartDate,
          required final int eventEndDate}) =
      _$AttendanceIndividualLogSearchEventImpl;

  String get registerId;
  String get tenantId;
  int get entryTime;
  int get exitTime;
  int get currentDate;
  String get projectId;
  List<String> get attendeeId;
  int get offset;
  int get limit;
  int get eventStartDate;
  int get eventEndDate;
  @JsonKey(ignore: true)
  _$$AttendanceIndividualLogSearchEventImplCopyWith<
          _$AttendanceIndividualLogSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceMarkEventImplCopyWith<$Res> {
  factory _$$AttendanceMarkEventImplCopyWith(_$AttendanceMarkEventImpl value,
          $Res Function(_$AttendanceMarkEventImpl) then) =
      __$$AttendanceMarkEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int entryTime,
      int exitTime,
      dynamic status,
      String individualId,
      String registarId,
      int id,
      int eventStartDate,
      int eventEndDate});
}

/// @nodoc
class __$$AttendanceMarkEventImplCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res,
        _$AttendanceMarkEventImpl>
    implements _$$AttendanceMarkEventImplCopyWith<$Res> {
  __$$AttendanceMarkEventImplCopyWithImpl(_$AttendanceMarkEventImpl _value,
      $Res Function(_$AttendanceMarkEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryTime = null,
    Object? exitTime = null,
    Object? status = freezed,
    Object? individualId = null,
    Object? registarId = null,
    Object? id = null,
    Object? eventStartDate = null,
    Object? eventEndDate = null,
  }) {
    return _then(_$AttendanceMarkEventImpl(
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as int,
      exitTime: null == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status ? _value.status! : status,
      individualId: null == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String,
      registarId: null == registarId
          ? _value.registarId
          : registarId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      eventStartDate: null == eventStartDate
          ? _value.eventStartDate
          : eventStartDate // ignore: cast_nullable_to_non_nullable
              as int,
      eventEndDate: null == eventEndDate
          ? _value.eventEndDate
          : eventEndDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AttendanceMarkEventImpl implements AttendanceMarkEvent {
  const _$AttendanceMarkEventImpl(
      {this.entryTime = 0,
      this.exitTime = 0,
      this.status = -1,
      required this.individualId,
      required this.registarId,
      required this.id,
      required this.eventStartDate,
      required this.eventEndDate});

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
  final int id;
  @override
  final int eventStartDate;
  @override
  final int eventEndDate;

  @override
  String toString() {
    return 'AttendanceIndividualEvent.individualAttendanceMark(entryTime: $entryTime, exitTime: $exitTime, status: $status, individualId: $individualId, registarId: $registarId, id: $id, eventStartDate: $eventStartDate, eventEndDate: $eventEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMarkEventImpl &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.individualId, individualId) ||
                other.individualId == individualId) &&
            (identical(other.registarId, registarId) ||
                other.registarId == registarId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventStartDate, eventStartDate) ||
                other.eventStartDate == eventStartDate) &&
            (identical(other.eventEndDate, eventEndDate) ||
                other.eventEndDate == eventEndDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      entryTime,
      exitTime,
      const DeepCollectionEquality().hash(status),
      individualId,
      registarId,
      id,
      eventStartDate,
      eventEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceMarkEventImplCopyWith<_$AttendanceMarkEventImpl> get copyWith =>
      __$$AttendanceMarkEventImplCopyWithImpl<_$AttendanceMarkEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceLogSearch,
    required TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceMark,
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function(int entryTime, int exitTime, String name,
            String tenantId, String registarId, String projectId)
        searchAttendees,
    required TResult Function() dispose,
  }) {
    return individualAttendanceMark(entryTime, exitTime, status, individualId,
        registarId, id, eventStartDate, eventEndDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult? Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult? Function()? dispose,
  }) {
    return individualAttendanceMark?.call(entryTime, exitTime, status,
        individualId, registarId, id, eventStartDate, eventEndDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (individualAttendanceMark != null) {
      return individualAttendanceMark(entryTime, exitTime, status, individualId,
          registarId, id, eventStartDate, eventEndDate);
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
    required TResult Function(UploadAttendanceEvent value) uploadAttendance,
    required TResult Function(SearchAttendeesEvent value) searchAttendees,
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
    TResult? Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult? Function(SearchAttendeesEvent value)? searchAttendees,
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
    TResult Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult Function(SearchAttendeesEvent value)? searchAttendees,
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
      required final String registarId,
      required final int id,
      required final int eventStartDate,
      required final int eventEndDate}) = _$AttendanceMarkEventImpl;

  int get entryTime;
  int get exitTime;
  dynamic get status;
  String get individualId;
  String get registarId;
  int get id;
  int get eventStartDate;
  int get eventEndDate;
  @JsonKey(ignore: true)
  _$$AttendanceMarkEventImplCopyWith<_$AttendanceMarkEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadAttendanceEventImplCopyWith<$Res> {
  factory _$$UploadAttendanceEventImplCopyWith(
          _$UploadAttendanceEventImpl value,
          $Res Function(_$UploadAttendanceEventImpl) then) =
      __$$UploadAttendanceEventImplCopyWithImpl<$Res>;
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
class __$$UploadAttendanceEventImplCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res,
        _$UploadAttendanceEventImpl>
    implements _$$UploadAttendanceEventImplCopyWith<$Res> {
  __$$UploadAttendanceEventImplCopyWithImpl(_$UploadAttendanceEventImpl _value,
      $Res Function(_$UploadAttendanceEventImpl) _then)
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
    return _then(_$UploadAttendanceEventImpl(
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

class _$UploadAttendanceEventImpl implements UploadAttendanceEvent {
  const _$UploadAttendanceEventImpl(
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
    return 'AttendanceIndividualEvent.uploadAttendance(entryTime: $entryTime, exitTime: $exitTime, status: $status, tenantId: $tenantId, registarId: $registarId, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAttendanceEventImpl &&
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
  _$$UploadAttendanceEventImplCopyWith<_$UploadAttendanceEventImpl>
      get copyWith => __$$UploadAttendanceEventImplCopyWithImpl<
          _$UploadAttendanceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceLogSearch,
    required TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceMark,
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function(int entryTime, int exitTime, String name,
            String tenantId, String registarId, String projectId)
        searchAttendees,
    required TResult Function() dispose,
  }) {
    return uploadAttendance(
        entryTime, exitTime, status, tenantId, registarId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult? Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult? Function()? dispose,
  }) {
    return uploadAttendance?.call(
        entryTime, exitTime, status, tenantId, registarId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
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
    required TResult Function(AttendanceIndividualLogSearchEvent value)
        individualAttendanceLogSearch,
    required TResult Function(AttendanceMarkEvent value)
        individualAttendanceMark,
    required TResult Function(UploadAttendanceEvent value) uploadAttendance,
    required TResult Function(SearchAttendeesEvent value) searchAttendees,
    required TResult Function(DisposeAttendanceIndividualEvent value) dispose,
  }) {
    return uploadAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult? Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult? Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult? Function(SearchAttendeesEvent value)? searchAttendees,
    TResult? Function(DisposeAttendanceIndividualEvent value)? dispose,
  }) {
    return uploadAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult Function(SearchAttendeesEvent value)? searchAttendees,
    TResult Function(DisposeAttendanceIndividualEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (uploadAttendance != null) {
      return uploadAttendance(this);
    }
    return orElse();
  }
}

abstract class UploadAttendanceEvent implements AttendanceIndividualEvent {
  const factory UploadAttendanceEvent(
      {required final int entryTime,
      required final int exitTime,
      required final int status,
      required final String tenantId,
      required final String registarId,
      required final String projectId}) = _$UploadAttendanceEventImpl;

  int get entryTime;
  int get exitTime;
  int get status;
  String get tenantId;
  String get registarId;
  String get projectId;
  @JsonKey(ignore: true)
  _$$UploadAttendanceEventImplCopyWith<_$UploadAttendanceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAttendeesEventImplCopyWith<$Res> {
  factory _$$SearchAttendeesEventImplCopyWith(_$SearchAttendeesEventImpl value,
          $Res Function(_$SearchAttendeesEventImpl) then) =
      __$$SearchAttendeesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int entryTime,
      int exitTime,
      String name,
      String tenantId,
      String registarId,
      String projectId});
}

/// @nodoc
class __$$SearchAttendeesEventImplCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res,
        _$SearchAttendeesEventImpl>
    implements _$$SearchAttendeesEventImplCopyWith<$Res> {
  __$$SearchAttendeesEventImplCopyWithImpl(_$SearchAttendeesEventImpl _value,
      $Res Function(_$SearchAttendeesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryTime = null,
    Object? exitTime = null,
    Object? name = null,
    Object? tenantId = null,
    Object? registarId = null,
    Object? projectId = null,
  }) {
    return _then(_$SearchAttendeesEventImpl(
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as int,
      exitTime: null == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SearchAttendeesEventImpl implements SearchAttendeesEvent {
  const _$SearchAttendeesEventImpl(
      {required this.entryTime,
      required this.exitTime,
      required this.name,
      required this.tenantId,
      required this.registarId,
      required this.projectId});

  @override
  final int entryTime;
  @override
  final int exitTime;
  @override
  final String name;
  @override
  final String tenantId;
  @override
  final String registarId;
  @override
  final String projectId;

  @override
  String toString() {
    return 'AttendanceIndividualEvent.searchAttendees(entryTime: $entryTime, exitTime: $exitTime, name: $name, tenantId: $tenantId, registarId: $registarId, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAttendeesEventImpl &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.registarId, registarId) ||
                other.registarId == registarId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, entryTime, exitTime, name, tenantId, registarId, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAttendeesEventImplCopyWith<_$SearchAttendeesEventImpl>
      get copyWith =>
          __$$SearchAttendeesEventImplCopyWithImpl<_$SearchAttendeesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceLogSearch,
    required TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceMark,
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function(int entryTime, int exitTime, String name,
            String tenantId, String registarId, String projectId)
        searchAttendees,
    required TResult Function() dispose,
  }) {
    return searchAttendees(
        entryTime, exitTime, name, tenantId, registarId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult? Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult? Function()? dispose,
  }) {
    return searchAttendees?.call(
        entryTime, exitTime, name, tenantId, registarId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (searchAttendees != null) {
      return searchAttendees(
          entryTime, exitTime, name, tenantId, registarId, projectId);
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
    required TResult Function(UploadAttendanceEvent value) uploadAttendance,
    required TResult Function(SearchAttendeesEvent value) searchAttendees,
    required TResult Function(DisposeAttendanceIndividualEvent value) dispose,
  }) {
    return searchAttendees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult? Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult? Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult? Function(SearchAttendeesEvent value)? searchAttendees,
    TResult? Function(DisposeAttendanceIndividualEvent value)? dispose,
  }) {
    return searchAttendees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceIndividualLogSearchEvent value)?
        individualAttendanceLogSearch,
    TResult Function(AttendanceMarkEvent value)? individualAttendanceMark,
    TResult Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult Function(SearchAttendeesEvent value)? searchAttendees,
    TResult Function(DisposeAttendanceIndividualEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (searchAttendees != null) {
      return searchAttendees(this);
    }
    return orElse();
  }
}

abstract class SearchAttendeesEvent implements AttendanceIndividualEvent {
  const factory SearchAttendeesEvent(
      {required final int entryTime,
      required final int exitTime,
      required final String name,
      required final String tenantId,
      required final String registarId,
      required final String projectId}) = _$SearchAttendeesEventImpl;

  int get entryTime;
  int get exitTime;
  String get name;
  String get tenantId;
  String get registarId;
  String get projectId;
  @JsonKey(ignore: true)
  _$$SearchAttendeesEventImplCopyWith<_$SearchAttendeesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeAttendanceIndividualEventImplCopyWith<$Res> {
  factory _$$DisposeAttendanceIndividualEventImplCopyWith(
          _$DisposeAttendanceIndividualEventImpl value,
          $Res Function(_$DisposeAttendanceIndividualEventImpl) then) =
      __$$DisposeAttendanceIndividualEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeAttendanceIndividualEventImplCopyWithImpl<$Res>
    extends _$AttendanceIndividualEventCopyWithImpl<$Res,
        _$DisposeAttendanceIndividualEventImpl>
    implements _$$DisposeAttendanceIndividualEventImplCopyWith<$Res> {
  __$$DisposeAttendanceIndividualEventImplCopyWithImpl(
      _$DisposeAttendanceIndividualEventImpl _value,
      $Res Function(_$DisposeAttendanceIndividualEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeAttendanceIndividualEventImpl
    implements DisposeAttendanceIndividualEvent {
  const _$DisposeAttendanceIndividualEventImpl();

  @override
  String toString() {
    return 'AttendanceIndividualEvent.dispose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisposeAttendanceIndividualEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceLogSearch,
    required TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)
        individualAttendanceMark,
    required TResult Function(int entryTime, int exitTime, int status,
            String tenantId, String registarId, String projectId)
        uploadAttendance,
    required TResult Function(int entryTime, int exitTime, String name,
            String tenantId, String registarId, String projectId)
        searchAttendees,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult? Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult? Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult? Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String registerId,
            String tenantId,
            int entryTime,
            int exitTime,
            int currentDate,
            String projectId,
            List<String> attendeeId,
            int offset,
            int limit,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceLogSearch,
    TResult Function(
            int entryTime,
            int exitTime,
            dynamic status,
            String individualId,
            String registarId,
            int id,
            int eventStartDate,
            int eventEndDate)?
        individualAttendanceMark,
    TResult Function(int entryTime, int exitTime, int status, String tenantId,
            String registarId, String projectId)?
        uploadAttendance,
    TResult Function(int entryTime, int exitTime, String name, String tenantId,
            String registarId, String projectId)?
        searchAttendees,
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
    required TResult Function(UploadAttendanceEvent value) uploadAttendance,
    required TResult Function(SearchAttendeesEvent value) searchAttendees,
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
    TResult? Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult? Function(SearchAttendeesEvent value)? searchAttendees,
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
    TResult Function(UploadAttendanceEvent value)? uploadAttendance,
    TResult Function(SearchAttendeesEvent value)? searchAttendees,
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
      _$DisposeAttendanceIndividualEventImpl;
}

/// @nodoc
mixin _$AttendanceIndividualState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)
        loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AttendanceIndividualStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AttendanceIndividualState.initial()';
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
    required TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)
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
    TResult? Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
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
    extends _$AttendanceIndividualStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AttendanceIndividualState.loading()';
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
    required TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)
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
    TResult? Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
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
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$AttendanceRowModelLoadedImplCopyWith<$Res> {
  factory _$$AttendanceRowModelLoadedImplCopyWith(
          _$AttendanceRowModelLoadedImpl value,
          $Res Function(_$AttendanceRowModelLoadedImpl) then) =
      __$$AttendanceRowModelLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<AttendeeCollectionModel> attendanceSearchModelList,
      List<AttendeeCollectionModel>? attendanceCollectionModel,
      int offsetData,
      int currentOffset,
      int countData,
      int limitData,
      bool flag});
}

/// @nodoc
class __$$AttendanceRowModelLoadedImplCopyWithImpl<$Res>
    extends _$AttendanceIndividualStateCopyWithImpl<$Res,
        _$AttendanceRowModelLoadedImpl>
    implements _$$AttendanceRowModelLoadedImplCopyWith<$Res> {
  __$$AttendanceRowModelLoadedImplCopyWithImpl(
      _$AttendanceRowModelLoadedImpl _value,
      $Res Function(_$AttendanceRowModelLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceSearchModelList = null,
    Object? attendanceCollectionModel = freezed,
    Object? offsetData = null,
    Object? currentOffset = null,
    Object? countData = null,
    Object? limitData = null,
    Object? flag = null,
  }) {
    return _then(_$AttendanceRowModelLoadedImpl(
      attendanceSearchModelList: null == attendanceSearchModelList
          ? _value._attendanceSearchModelList
          : attendanceSearchModelList // ignore: cast_nullable_to_non_nullable
              as List<AttendeeCollectionModel>,
      attendanceCollectionModel: freezed == attendanceCollectionModel
          ? _value._attendanceCollectionModel
          : attendanceCollectionModel // ignore: cast_nullable_to_non_nullable
              as List<AttendeeCollectionModel>?,
      offsetData: null == offsetData
          ? _value.offsetData
          : offsetData // ignore: cast_nullable_to_non_nullable
              as int,
      currentOffset: null == currentOffset
          ? _value.currentOffset
          : currentOffset // ignore: cast_nullable_to_non_nullable
              as int,
      countData: null == countData
          ? _value.countData
          : countData // ignore: cast_nullable_to_non_nullable
              as int,
      limitData: null == limitData
          ? _value.limitData
          : limitData // ignore: cast_nullable_to_non_nullable
              as int,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AttendanceRowModelLoadedImpl extends _AttendanceRowModelLoaded {
  _$AttendanceRowModelLoadedImpl(
      {final List<AttendeeCollectionModel> attendanceSearchModelList = const [],
      final List<AttendeeCollectionModel>? attendanceCollectionModel,
      this.offsetData = 0,
      this.currentOffset = 0,
      this.countData = 0,
      this.limitData = 10,
      this.flag = false})
      : _attendanceSearchModelList = attendanceSearchModelList,
        _attendanceCollectionModel = attendanceCollectionModel,
        super._();

  final List<AttendeeCollectionModel> _attendanceSearchModelList;
  @override
  @JsonKey()
  List<AttendeeCollectionModel> get attendanceSearchModelList {
    if (_attendanceSearchModelList is EqualUnmodifiableListView)
      return _attendanceSearchModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceSearchModelList);
  }

  final List<AttendeeCollectionModel>? _attendanceCollectionModel;
  @override
  List<AttendeeCollectionModel>? get attendanceCollectionModel {
    final value = _attendanceCollectionModel;
    if (value == null) return null;
    if (_attendanceCollectionModel is EqualUnmodifiableListView)
      return _attendanceCollectionModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int offsetData;
  @override
  @JsonKey()
  final int currentOffset;
  @override
  @JsonKey()
  final int countData;
  @override
  @JsonKey()
  final int limitData;
  @override
  @JsonKey()
  final bool flag;

  @override
  String toString() {
    return 'AttendanceIndividualState.loaded(attendanceSearchModelList: $attendanceSearchModelList, attendanceCollectionModel: $attendanceCollectionModel, offsetData: $offsetData, currentOffset: $currentOffset, countData: $countData, limitData: $limitData, flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceRowModelLoadedImpl &&
            const DeepCollectionEquality().equals(
                other._attendanceSearchModelList, _attendanceSearchModelList) &&
            const DeepCollectionEquality().equals(
                other._attendanceCollectionModel, _attendanceCollectionModel) &&
            (identical(other.offsetData, offsetData) ||
                other.offsetData == offsetData) &&
            (identical(other.currentOffset, currentOffset) ||
                other.currentOffset == currentOffset) &&
            (identical(other.countData, countData) ||
                other.countData == countData) &&
            (identical(other.limitData, limitData) ||
                other.limitData == limitData) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attendanceSearchModelList),
      const DeepCollectionEquality().hash(_attendanceCollectionModel),
      offsetData,
      currentOffset,
      countData,
      limitData,
      flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceRowModelLoadedImplCopyWith<_$AttendanceRowModelLoadedImpl>
      get copyWith => __$$AttendanceRowModelLoadedImplCopyWithImpl<
          _$AttendanceRowModelLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(attendanceSearchModelList, attendanceCollectionModel,
        offsetData, currentOffset, countData, limitData, flag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
    TResult? Function(String? error)? error,
  }) {
    return loaded?.call(attendanceSearchModelList, attendanceCollectionModel,
        offsetData, currentOffset, countData, limitData, flag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(attendanceSearchModelList, attendanceCollectionModel,
          offsetData, currentOffset, countData, limitData, flag);
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
  factory _AttendanceRowModelLoaded(
      {final List<AttendeeCollectionModel> attendanceSearchModelList,
      final List<AttendeeCollectionModel>? attendanceCollectionModel,
      final int offsetData,
      final int currentOffset,
      final int countData,
      final int limitData,
      final bool flag}) = _$AttendanceRowModelLoadedImpl;
  _AttendanceRowModelLoaded._() : super._();

  List<AttendeeCollectionModel> get attendanceSearchModelList;
  List<AttendeeCollectionModel>? get attendanceCollectionModel;
  int get offsetData;
  int get currentOffset;
  int get countData;
  int get limitData;
  bool get flag;
  @JsonKey(ignore: true)
  _$$AttendanceRowModelLoadedImplCopyWith<_$AttendanceRowModelLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$AttendanceIndividualStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AttendanceIndividualState.error(error: $error)';
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
    required TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)
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
    TResult? Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AttendeeCollectionModel> attendanceSearchModelList,
            List<AttendeeCollectionModel>? attendanceCollectionModel,
            int offsetData,
            int currentOffset,
            int countData,
            int limitData,
            bool flag)?
        loaded,
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
  const factory _Error(final String? error) = _$ErrorImpl;
  const _Error._() : super._();

  String? get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
