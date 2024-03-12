// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceMarkRegisterModelResponse
    _$AttendanceMarkRegisterModelResponseFromJson(Map<String, dynamic> json) {
  return _AttendanceMarkRegisterModelResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceMarkRegisterModelResponse {
  @JsonKey(name: 'attendanceRegister')
  List<AttendanceMarkRegisterModel>? get attendanceRegister =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceMarkRegisterModelResponseCopyWith<
          AttendanceMarkRegisterModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceMarkRegisterModelResponseCopyWith<$Res> {
  factory $AttendanceMarkRegisterModelResponseCopyWith(
          AttendanceMarkRegisterModelResponse value,
          $Res Function(AttendanceMarkRegisterModelResponse) then) =
      _$AttendanceMarkRegisterModelResponseCopyWithImpl<$Res,
          AttendanceMarkRegisterModelResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendanceRegister')
      List<AttendanceMarkRegisterModel>? attendanceRegister});
}

/// @nodoc
class _$AttendanceMarkRegisterModelResponseCopyWithImpl<$Res,
        $Val extends AttendanceMarkRegisterModelResponse>
    implements $AttendanceMarkRegisterModelResponseCopyWith<$Res> {
  _$AttendanceMarkRegisterModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRegister = freezed,
  }) {
    return _then(_value.copyWith(
      attendanceRegister: freezed == attendanceRegister
          ? _value.attendanceRegister
          : attendanceRegister // ignore: cast_nullable_to_non_nullable
              as List<AttendanceMarkRegisterModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceMarkRegisterModelResponseImplCopyWith<$Res>
    implements $AttendanceMarkRegisterModelResponseCopyWith<$Res> {
  factory _$$AttendanceMarkRegisterModelResponseImplCopyWith(
          _$AttendanceMarkRegisterModelResponseImpl value,
          $Res Function(_$AttendanceMarkRegisterModelResponseImpl) then) =
      __$$AttendanceMarkRegisterModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendanceRegister')
      List<AttendanceMarkRegisterModel>? attendanceRegister});
}

/// @nodoc
class __$$AttendanceMarkRegisterModelResponseImplCopyWithImpl<$Res>
    extends _$AttendanceMarkRegisterModelResponseCopyWithImpl<$Res,
        _$AttendanceMarkRegisterModelResponseImpl>
    implements _$$AttendanceMarkRegisterModelResponseImplCopyWith<$Res> {
  __$$AttendanceMarkRegisterModelResponseImplCopyWithImpl(
      _$AttendanceMarkRegisterModelResponseImpl _value,
      $Res Function(_$AttendanceMarkRegisterModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRegister = freezed,
  }) {
    return _then(_$AttendanceMarkRegisterModelResponseImpl(
      attendanceRegister: freezed == attendanceRegister
          ? _value._attendanceRegister
          : attendanceRegister // ignore: cast_nullable_to_non_nullable
              as List<AttendanceMarkRegisterModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceMarkRegisterModelResponseImpl
    implements _AttendanceMarkRegisterModelResponse {
  _$AttendanceMarkRegisterModelResponseImpl(
      {@JsonKey(name: 'attendanceRegister')
      final List<AttendanceMarkRegisterModel>? attendanceRegister})
      : _attendanceRegister = attendanceRegister;

  factory _$AttendanceMarkRegisterModelResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendanceMarkRegisterModelResponseImplFromJson(json);

  final List<AttendanceMarkRegisterModel>? _attendanceRegister;
  @override
  @JsonKey(name: 'attendanceRegister')
  List<AttendanceMarkRegisterModel>? get attendanceRegister {
    final value = _attendanceRegister;
    if (value == null) return null;
    if (_attendanceRegister is EqualUnmodifiableListView)
      return _attendanceRegister;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttendanceMarkRegisterModelResponse(attendanceRegister: $attendanceRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMarkRegisterModelResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._attendanceRegister, _attendanceRegister));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_attendanceRegister));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceMarkRegisterModelResponseImplCopyWith<
          _$AttendanceMarkRegisterModelResponseImpl>
      get copyWith => __$$AttendanceMarkRegisterModelResponseImplCopyWithImpl<
          _$AttendanceMarkRegisterModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceMarkRegisterModelResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendanceMarkRegisterModelResponse
    implements AttendanceMarkRegisterModelResponse {
  factory _AttendanceMarkRegisterModelResponse(
          {@JsonKey(name: 'attendanceRegister')
          final List<AttendanceMarkRegisterModel>? attendanceRegister}) =
      _$AttendanceMarkRegisterModelResponseImpl;

  factory _AttendanceMarkRegisterModelResponse.fromJson(
          Map<String, dynamic> json) =
      _$AttendanceMarkRegisterModelResponseImpl.fromJson;

  @override
  @JsonKey(name: 'attendanceRegister')
  List<AttendanceMarkRegisterModel>? get attendanceRegister;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceMarkRegisterModelResponseImplCopyWith<
          _$AttendanceMarkRegisterModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceMarkRegisterModel _$AttendanceMarkRegisterModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceMarkRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceMarkRegisterModel {
  String? get id => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  String? get registerNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  String? get serviceCode => throw _privateConstructorUsedError;
  int? get startDate => throw _privateConstructorUsedError;
  int? get endDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendees')
  List<AttendanceMarkIndividualModelAttendee>? get attendanceAttendees =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'auditDetails')
  AuditDetails? get auditDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalDetails')
  AdditionalDetails? get additionalDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceMarkRegisterModelCopyWith<AttendanceMarkRegisterModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceMarkRegisterModelCopyWith<$Res> {
  factory $AttendanceMarkRegisterModelCopyWith(
          AttendanceMarkRegisterModel value,
          $Res Function(AttendanceMarkRegisterModel) then) =
      _$AttendanceMarkRegisterModelCopyWithImpl<$Res,
          AttendanceMarkRegisterModel>;
  @useResult
  $Res call(
      {String? id,
      String? tenantId,
      String? registerNumber,
      String? name,
      String? referenceId,
      String? serviceCode,
      int? startDate,
      int? endDate,
      String? status,
      @JsonKey(name: 'attendees')
      List<AttendanceMarkIndividualModelAttendee>? attendanceAttendees,
      @JsonKey(name: 'auditDetails') AuditDetails? auditDetails,
      @JsonKey(name: 'additionalDetails')
      AdditionalDetails? additionalDetails});

  $AuditDetailsCopyWith<$Res>? get auditDetails;
  $AdditionalDetailsCopyWith<$Res>? get additionalDetails;
}

/// @nodoc
class _$AttendanceMarkRegisterModelCopyWithImpl<$Res,
        $Val extends AttendanceMarkRegisterModel>
    implements $AttendanceMarkRegisterModelCopyWith<$Res> {
  _$AttendanceMarkRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? registerNumber = freezed,
    Object? name = freezed,
    Object? referenceId = freezed,
    Object? serviceCode = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? attendanceAttendees = freezed,
    Object? auditDetails = freezed,
    Object? additionalDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      registerNumber: freezed == registerNumber
          ? _value.registerNumber
          : registerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCode: freezed == serviceCode
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceAttendees: freezed == attendanceAttendees
          ? _value.attendanceAttendees
          : attendanceAttendees // ignore: cast_nullable_to_non_nullable
              as List<AttendanceMarkIndividualModelAttendee>?,
      auditDetails: freezed == auditDetails
          ? _value.auditDetails
          : auditDetails // ignore: cast_nullable_to_non_nullable
              as AuditDetails?,
      additionalDetails: freezed == additionalDetails
          ? _value.additionalDetails
          : additionalDetails // ignore: cast_nullable_to_non_nullable
              as AdditionalDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuditDetailsCopyWith<$Res>? get auditDetails {
    if (_value.auditDetails == null) {
      return null;
    }

    return $AuditDetailsCopyWith<$Res>(_value.auditDetails!, (value) {
      return _then(_value.copyWith(auditDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionalDetailsCopyWith<$Res>? get additionalDetails {
    if (_value.additionalDetails == null) {
      return null;
    }

    return $AdditionalDetailsCopyWith<$Res>(_value.additionalDetails!, (value) {
      return _then(_value.copyWith(additionalDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceMarkRegisterModelImplCopyWith<$Res>
    implements $AttendanceMarkRegisterModelCopyWith<$Res> {
  factory _$$AttendanceMarkRegisterModelImplCopyWith(
          _$AttendanceMarkRegisterModelImpl value,
          $Res Function(_$AttendanceMarkRegisterModelImpl) then) =
      __$$AttendanceMarkRegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? tenantId,
      String? registerNumber,
      String? name,
      String? referenceId,
      String? serviceCode,
      int? startDate,
      int? endDate,
      String? status,
      @JsonKey(name: 'attendees')
      List<AttendanceMarkIndividualModelAttendee>? attendanceAttendees,
      @JsonKey(name: 'auditDetails') AuditDetails? auditDetails,
      @JsonKey(name: 'additionalDetails')
      AdditionalDetails? additionalDetails});

  @override
  $AuditDetailsCopyWith<$Res>? get auditDetails;
  @override
  $AdditionalDetailsCopyWith<$Res>? get additionalDetails;
}

/// @nodoc
class __$$AttendanceMarkRegisterModelImplCopyWithImpl<$Res>
    extends _$AttendanceMarkRegisterModelCopyWithImpl<$Res,
        _$AttendanceMarkRegisterModelImpl>
    implements _$$AttendanceMarkRegisterModelImplCopyWith<$Res> {
  __$$AttendanceMarkRegisterModelImplCopyWithImpl(
      _$AttendanceMarkRegisterModelImpl _value,
      $Res Function(_$AttendanceMarkRegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? registerNumber = freezed,
    Object? name = freezed,
    Object? referenceId = freezed,
    Object? serviceCode = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? attendanceAttendees = freezed,
    Object? auditDetails = freezed,
    Object? additionalDetails = freezed,
  }) {
    return _then(_$AttendanceMarkRegisterModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      registerNumber: freezed == registerNumber
          ? _value.registerNumber
          : registerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCode: freezed == serviceCode
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceAttendees: freezed == attendanceAttendees
          ? _value._attendanceAttendees
          : attendanceAttendees // ignore: cast_nullable_to_non_nullable
              as List<AttendanceMarkIndividualModelAttendee>?,
      auditDetails: freezed == auditDetails
          ? _value.auditDetails
          : auditDetails // ignore: cast_nullable_to_non_nullable
              as AuditDetails?,
      additionalDetails: freezed == additionalDetails
          ? _value.additionalDetails
          : additionalDetails // ignore: cast_nullable_to_non_nullable
              as AdditionalDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceMarkRegisterModelImpl
    implements _AttendanceMarkRegisterModel {
  _$AttendanceMarkRegisterModelImpl(
      {this.id,
      this.tenantId,
      this.registerNumber,
      this.name,
      this.referenceId,
      this.serviceCode,
      this.startDate,
      this.endDate,
      this.status,
      @JsonKey(name: 'attendees')
      final List<AttendanceMarkIndividualModelAttendee>? attendanceAttendees,
      @JsonKey(name: 'auditDetails') this.auditDetails,
      @JsonKey(name: 'additionalDetails') this.additionalDetails})
      : _attendanceAttendees = attendanceAttendees;

  factory _$AttendanceMarkRegisterModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendanceMarkRegisterModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? tenantId;
  @override
  final String? registerNumber;
  @override
  final String? name;
  @override
  final String? referenceId;
  @override
  final String? serviceCode;
  @override
  final int? startDate;
  @override
  final int? endDate;
  @override
  final String? status;
  final List<AttendanceMarkIndividualModelAttendee>? _attendanceAttendees;
  @override
  @JsonKey(name: 'attendees')
  List<AttendanceMarkIndividualModelAttendee>? get attendanceAttendees {
    final value = _attendanceAttendees;
    if (value == null) return null;
    if (_attendanceAttendees is EqualUnmodifiableListView)
      return _attendanceAttendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'auditDetails')
  final AuditDetails? auditDetails;
  @override
  @JsonKey(name: 'additionalDetails')
  final AdditionalDetails? additionalDetails;

  @override
  String toString() {
    return 'AttendanceMarkRegisterModel(id: $id, tenantId: $tenantId, registerNumber: $registerNumber, name: $name, referenceId: $referenceId, serviceCode: $serviceCode, startDate: $startDate, endDate: $endDate, status: $status, attendanceAttendees: $attendanceAttendees, auditDetails: $auditDetails, additionalDetails: $additionalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMarkRegisterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.registerNumber, registerNumber) ||
                other.registerNumber == registerNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.serviceCode, serviceCode) ||
                other.serviceCode == serviceCode) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._attendanceAttendees, _attendanceAttendees) &&
            (identical(other.auditDetails, auditDetails) ||
                other.auditDetails == auditDetails) &&
            (identical(other.additionalDetails, additionalDetails) ||
                other.additionalDetails == additionalDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tenantId,
      registerNumber,
      name,
      referenceId,
      serviceCode,
      startDate,
      endDate,
      status,
      const DeepCollectionEquality().hash(_attendanceAttendees),
      auditDetails,
      additionalDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceMarkRegisterModelImplCopyWith<_$AttendanceMarkRegisterModelImpl>
      get copyWith => __$$AttendanceMarkRegisterModelImplCopyWithImpl<
          _$AttendanceMarkRegisterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceMarkRegisterModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceMarkRegisterModel
    implements AttendanceMarkRegisterModel {
  factory _AttendanceMarkRegisterModel(
      {final String? id,
      final String? tenantId,
      final String? registerNumber,
      final String? name,
      final String? referenceId,
      final String? serviceCode,
      final int? startDate,
      final int? endDate,
      final String? status,
      @JsonKey(name: 'attendees')
      final List<AttendanceMarkIndividualModelAttendee>? attendanceAttendees,
      @JsonKey(name: 'auditDetails') final AuditDetails? auditDetails,
      @JsonKey(name: 'additionalDetails')
      final AdditionalDetails?
          additionalDetails}) = _$AttendanceMarkRegisterModelImpl;

  factory _AttendanceMarkRegisterModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceMarkRegisterModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get tenantId;
  @override
  String? get registerNumber;
  @override
  String? get name;
  @override
  String? get referenceId;
  @override
  String? get serviceCode;
  @override
  int? get startDate;
  @override
  int? get endDate;
  @override
  String? get status;
  @override
  @JsonKey(name: 'attendees')
  List<AttendanceMarkIndividualModelAttendee>? get attendanceAttendees;
  @override
  @JsonKey(name: 'auditDetails')
  AuditDetails? get auditDetails;
  @override
  @JsonKey(name: 'additionalDetails')
  AdditionalDetails? get additionalDetails;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceMarkRegisterModelImplCopyWith<_$AttendanceMarkRegisterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceMarkIndividualModelAttendee
    _$AttendanceMarkIndividualModelAttendeeFromJson(Map<String, dynamic> json) {
  return _AttendanceMarkIndividualModelAttendee.fromJson(json);
}

/// @nodoc
mixin _$AttendanceMarkIndividualModelAttendee {
  String? get id => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  String? get registerId => throw _privateConstructorUsedError;
  String? get individualId => throw _privateConstructorUsedError;
  int? get enrollmentDate => throw _privateConstructorUsedError;
  int? get denrollmentDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceMarkIndividualModelAttendeeCopyWith<
          AttendanceMarkIndividualModelAttendee>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceMarkIndividualModelAttendeeCopyWith<$Res> {
  factory $AttendanceMarkIndividualModelAttendeeCopyWith(
          AttendanceMarkIndividualModelAttendee value,
          $Res Function(AttendanceMarkIndividualModelAttendee) then) =
      _$AttendanceMarkIndividualModelAttendeeCopyWithImpl<$Res,
          AttendanceMarkIndividualModelAttendee>;
  @useResult
  $Res call(
      {String? id,
      String? tenantId,
      String? registerId,
      String? individualId,
      int? enrollmentDate,
      int? denrollmentDate});
}

/// @nodoc
class _$AttendanceMarkIndividualModelAttendeeCopyWithImpl<$Res,
        $Val extends AttendanceMarkIndividualModelAttendee>
    implements $AttendanceMarkIndividualModelAttendeeCopyWith<$Res> {
  _$AttendanceMarkIndividualModelAttendeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? registerId = freezed,
    Object? individualId = freezed,
    Object? enrollmentDate = freezed,
    Object? denrollmentDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      registerId: freezed == registerId
          ? _value.registerId
          : registerId // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentDate: freezed == enrollmentDate
          ? _value.enrollmentDate
          : enrollmentDate // ignore: cast_nullable_to_non_nullable
              as int?,
      denrollmentDate: freezed == denrollmentDate
          ? _value.denrollmentDate
          : denrollmentDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceMarkIndividualModelAttendeeImplCopyWith<$Res>
    implements $AttendanceMarkIndividualModelAttendeeCopyWith<$Res> {
  factory _$$AttendanceMarkIndividualModelAttendeeImplCopyWith(
          _$AttendanceMarkIndividualModelAttendeeImpl value,
          $Res Function(_$AttendanceMarkIndividualModelAttendeeImpl) then) =
      __$$AttendanceMarkIndividualModelAttendeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? tenantId,
      String? registerId,
      String? individualId,
      int? enrollmentDate,
      int? denrollmentDate});
}

/// @nodoc
class __$$AttendanceMarkIndividualModelAttendeeImplCopyWithImpl<$Res>
    extends _$AttendanceMarkIndividualModelAttendeeCopyWithImpl<$Res,
        _$AttendanceMarkIndividualModelAttendeeImpl>
    implements _$$AttendanceMarkIndividualModelAttendeeImplCopyWith<$Res> {
  __$$AttendanceMarkIndividualModelAttendeeImplCopyWithImpl(
      _$AttendanceMarkIndividualModelAttendeeImpl _value,
      $Res Function(_$AttendanceMarkIndividualModelAttendeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tenantId = freezed,
    Object? registerId = freezed,
    Object? individualId = freezed,
    Object? enrollmentDate = freezed,
    Object? denrollmentDate = freezed,
  }) {
    return _then(_$AttendanceMarkIndividualModelAttendeeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      registerId: freezed == registerId
          ? _value.registerId
          : registerId // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      enrollmentDate: freezed == enrollmentDate
          ? _value.enrollmentDate
          : enrollmentDate // ignore: cast_nullable_to_non_nullable
              as int?,
      denrollmentDate: freezed == denrollmentDate
          ? _value.denrollmentDate
          : denrollmentDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceMarkIndividualModelAttendeeImpl
    implements _AttendanceMarkIndividualModelAttendee {
  _$AttendanceMarkIndividualModelAttendeeImpl(
      {this.id,
      this.tenantId,
      this.registerId,
      this.individualId,
      this.enrollmentDate,
      this.denrollmentDate});

  factory _$AttendanceMarkIndividualModelAttendeeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendanceMarkIndividualModelAttendeeImplFromJson(json);

  @override
  final String? id;
  @override
  final String? tenantId;
  @override
  final String? registerId;
  @override
  final String? individualId;
  @override
  final int? enrollmentDate;
  @override
  final int? denrollmentDate;

  @override
  String toString() {
    return 'AttendanceMarkIndividualModelAttendee(id: $id, tenantId: $tenantId, registerId: $registerId, individualId: $individualId, enrollmentDate: $enrollmentDate, denrollmentDate: $denrollmentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMarkIndividualModelAttendeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.registerId, registerId) ||
                other.registerId == registerId) &&
            (identical(other.individualId, individualId) ||
                other.individualId == individualId) &&
            (identical(other.enrollmentDate, enrollmentDate) ||
                other.enrollmentDate == enrollmentDate) &&
            (identical(other.denrollmentDate, denrollmentDate) ||
                other.denrollmentDate == denrollmentDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tenantId, registerId,
      individualId, enrollmentDate, denrollmentDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceMarkIndividualModelAttendeeImplCopyWith<
          _$AttendanceMarkIndividualModelAttendeeImpl>
      get copyWith => __$$AttendanceMarkIndividualModelAttendeeImplCopyWithImpl<
          _$AttendanceMarkIndividualModelAttendeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceMarkIndividualModelAttendeeImplToJson(
      this,
    );
  }
}

abstract class _AttendanceMarkIndividualModelAttendee
    implements AttendanceMarkIndividualModelAttendee {
  factory _AttendanceMarkIndividualModelAttendee(
          {final String? id,
          final String? tenantId,
          final String? registerId,
          final String? individualId,
          final int? enrollmentDate,
          final int? denrollmentDate}) =
      _$AttendanceMarkIndividualModelAttendeeImpl;

  factory _AttendanceMarkIndividualModelAttendee.fromJson(
          Map<String, dynamic> json) =
      _$AttendanceMarkIndividualModelAttendeeImpl.fromJson;

  @override
  String? get id;
  @override
  String? get tenantId;
  @override
  String? get registerId;
  @override
  String? get individualId;
  @override
  int? get enrollmentDate;
  @override
  int? get denrollmentDate;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceMarkIndividualModelAttendeeImplCopyWith<
          _$AttendanceMarkIndividualModelAttendeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuditDetails _$AuditDetailsFromJson(Map<String, dynamic> json) {
  return _AuditDetails.fromJson(json);
}

/// @nodoc
mixin _$AuditDetails {
  String? get createdBy => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;
  int? get createdTime => throw _privateConstructorUsedError;
  int? get lastModifiedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuditDetailsCopyWith<AuditDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditDetailsCopyWith<$Res> {
  factory $AuditDetailsCopyWith(
          AuditDetails value, $Res Function(AuditDetails) then) =
      _$AuditDetailsCopyWithImpl<$Res, AuditDetails>;
  @useResult
  $Res call(
      {String? createdBy,
      String? lastModifiedBy,
      int? createdTime,
      int? lastModifiedTime});
}

/// @nodoc
class _$AuditDetailsCopyWithImpl<$Res, $Val extends AuditDetails>
    implements $AuditDetailsCopyWith<$Res> {
  _$AuditDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = freezed,
    Object? lastModifiedBy = freezed,
    Object? createdTime = freezed,
    Object? lastModifiedTime = freezed,
  }) {
    return _then(_value.copyWith(
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModifiedTime: freezed == lastModifiedTime
          ? _value.lastModifiedTime
          : lastModifiedTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuditDetailsImplCopyWith<$Res>
    implements $AuditDetailsCopyWith<$Res> {
  factory _$$AuditDetailsImplCopyWith(
          _$AuditDetailsImpl value, $Res Function(_$AuditDetailsImpl) then) =
      __$$AuditDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? createdBy,
      String? lastModifiedBy,
      int? createdTime,
      int? lastModifiedTime});
}

/// @nodoc
class __$$AuditDetailsImplCopyWithImpl<$Res>
    extends _$AuditDetailsCopyWithImpl<$Res, _$AuditDetailsImpl>
    implements _$$AuditDetailsImplCopyWith<$Res> {
  __$$AuditDetailsImplCopyWithImpl(
      _$AuditDetailsImpl _value, $Res Function(_$AuditDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdBy = freezed,
    Object? lastModifiedBy = freezed,
    Object? createdTime = freezed,
    Object? lastModifiedTime = freezed,
  }) {
    return _then(_$AuditDetailsImpl(
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModifiedBy: freezed == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModifiedTime: freezed == lastModifiedTime
          ? _value.lastModifiedTime
          : lastModifiedTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditDetailsImpl implements _AuditDetails {
  const _$AuditDetailsImpl(
      {this.createdBy,
      this.lastModifiedBy,
      this.createdTime,
      this.lastModifiedTime});

  factory _$AuditDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditDetailsImplFromJson(json);

  @override
  final String? createdBy;
  @override
  final String? lastModifiedBy;
  @override
  final int? createdTime;
  @override
  final int? lastModifiedTime;

  @override
  String toString() {
    return 'AuditDetails(createdBy: $createdBy, lastModifiedBy: $lastModifiedBy, createdTime: $createdTime, lastModifiedTime: $lastModifiedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditDetailsImpl &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.lastModifiedTime, lastModifiedTime) ||
                other.lastModifiedTime == lastModifiedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdBy, lastModifiedBy, createdTime, lastModifiedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditDetailsImplCopyWith<_$AuditDetailsImpl> get copyWith =>
      __$$AuditDetailsImplCopyWithImpl<_$AuditDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditDetailsImplToJson(
      this,
    );
  }
}

abstract class _AuditDetails implements AuditDetails {
  const factory _AuditDetails(
      {final String? createdBy,
      final String? lastModifiedBy,
      final int? createdTime,
      final int? lastModifiedTime}) = _$AuditDetailsImpl;

  factory _AuditDetails.fromJson(Map<String, dynamic> json) =
      _$AuditDetailsImpl.fromJson;

  @override
  String? get createdBy;
  @override
  String? get lastModifiedBy;
  @override
  int? get createdTime;
  @override
  int? get lastModifiedTime;
  @override
  @JsonKey(ignore: true)
  _$$AuditDetailsImplCopyWith<_$AuditDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalDetails _$AdditionalDetailsFromJson(Map<String, dynamic> json) {
  return _AdditionalDetails.fromJson(json);
}

/// @nodoc
mixin _$AdditionalDetails {
  String? get description => throw _privateConstructorUsedError;
  String? get boundary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDetailsCopyWith<AdditionalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDetailsCopyWith<$Res> {
  factory $AdditionalDetailsCopyWith(
          AdditionalDetails value, $Res Function(AdditionalDetails) then) =
      _$AdditionalDetailsCopyWithImpl<$Res, AdditionalDetails>;
  @useResult
  $Res call({String? description, String? boundary});
}

/// @nodoc
class _$AdditionalDetailsCopyWithImpl<$Res, $Val extends AdditionalDetails>
    implements $AdditionalDetailsCopyWith<$Res> {
  _$AdditionalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? boundary = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      boundary: freezed == boundary
          ? _value.boundary
          : boundary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalDetailsImplCopyWith<$Res>
    implements $AdditionalDetailsCopyWith<$Res> {
  factory _$$AdditionalDetailsImplCopyWith(_$AdditionalDetailsImpl value,
          $Res Function(_$AdditionalDetailsImpl) then) =
      __$$AdditionalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, String? boundary});
}

/// @nodoc
class __$$AdditionalDetailsImplCopyWithImpl<$Res>
    extends _$AdditionalDetailsCopyWithImpl<$Res, _$AdditionalDetailsImpl>
    implements _$$AdditionalDetailsImplCopyWith<$Res> {
  __$$AdditionalDetailsImplCopyWithImpl(_$AdditionalDetailsImpl _value,
      $Res Function(_$AdditionalDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? boundary = freezed,
  }) {
    return _then(_$AdditionalDetailsImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      boundary: freezed == boundary
          ? _value.boundary
          : boundary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalDetailsImpl implements _AdditionalDetails {
  const _$AdditionalDetailsImpl({this.description, this.boundary});

  factory _$AdditionalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalDetailsImplFromJson(json);

  @override
  final String? description;
  @override
  final String? boundary;

  @override
  String toString() {
    return 'AdditionalDetails(description: $description, boundary: $boundary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalDetailsImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.boundary, boundary) ||
                other.boundary == boundary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, boundary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalDetailsImplCopyWith<_$AdditionalDetailsImpl> get copyWith =>
      __$$AdditionalDetailsImplCopyWithImpl<_$AdditionalDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalDetailsImplToJson(
      this,
    );
  }
}

abstract class _AdditionalDetails implements AdditionalDetails {
  const factory _AdditionalDetails(
      {final String? description,
      final String? boundary}) = _$AdditionalDetailsImpl;

  factory _AdditionalDetails.fromJson(Map<String, dynamic> json) =
      _$AdditionalDetailsImpl.fromJson;

  @override
  String? get description;
  @override
  String? get boundary;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalDetailsImplCopyWith<_$AdditionalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
