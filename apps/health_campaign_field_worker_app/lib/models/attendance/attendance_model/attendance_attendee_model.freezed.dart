// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance_attendee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendeeServerResponse _$AttendeeServerResponseFromJson(
    Map<String, dynamic> json) {
  return _AttendeeServerResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendeeServerResponse {
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "attendeeResponseModel")
  List<AttendeeResponseModel>? get attendeeResponseModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendeeServerResponseCopyWith<AttendeeServerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeServerResponseCopyWith<$Res> {
  factory $AttendeeServerResponseCopyWith(AttendeeServerResponse value,
          $Res Function(AttendeeServerResponse) then) =
      _$AttendeeServerResponseCopyWithImpl<$Res, AttendeeServerResponse>;
  @useResult
  $Res call(
      {int count,
      @JsonKey(name: "attendeeResponseModel")
          List<AttendeeResponseModel>? attendeeResponseModel});
}

/// @nodoc
class _$AttendeeServerResponseCopyWithImpl<$Res,
        $Val extends AttendeeServerResponse>
    implements $AttendeeServerResponseCopyWith<$Res> {
  _$AttendeeServerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? attendeeResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      attendeeResponseModel: freezed == attendeeResponseModel
          ? _value.attendeeResponseModel
          : attendeeResponseModel // ignore: cast_nullable_to_non_nullable
              as List<AttendeeResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendeeServerResponseCopyWith<$Res>
    implements $AttendeeServerResponseCopyWith<$Res> {
  factory _$$_AttendeeServerResponseCopyWith(_$_AttendeeServerResponse value,
          $Res Function(_$_AttendeeServerResponse) then) =
      __$$_AttendeeServerResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      @JsonKey(name: "attendeeResponseModel")
          List<AttendeeResponseModel>? attendeeResponseModel});
}

/// @nodoc
class __$$_AttendeeServerResponseCopyWithImpl<$Res>
    extends _$AttendeeServerResponseCopyWithImpl<$Res,
        _$_AttendeeServerResponse>
    implements _$$_AttendeeServerResponseCopyWith<$Res> {
  __$$_AttendeeServerResponseCopyWithImpl(_$_AttendeeServerResponse _value,
      $Res Function(_$_AttendeeServerResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? attendeeResponseModel = freezed,
  }) {
    return _then(_$_AttendeeServerResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      attendeeResponseModel: freezed == attendeeResponseModel
          ? _value._attendeeResponseModel
          : attendeeResponseModel // ignore: cast_nullable_to_non_nullable
              as List<AttendeeResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendeeServerResponse implements _AttendeeServerResponse {
  const _$_AttendeeServerResponse(
      {this.count = 0,
      @JsonKey(name: "attendeeResponseModel")
          final List<AttendeeResponseModel>? attendeeResponseModel})
      : _attendeeResponseModel = attendeeResponseModel;

  factory _$_AttendeeServerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AttendeeServerResponseFromJson(json);

  @override
  @JsonKey()
  final int count;
  final List<AttendeeResponseModel>? _attendeeResponseModel;
  @override
  @JsonKey(name: "attendeeResponseModel")
  List<AttendeeResponseModel>? get attendeeResponseModel {
    final value = _attendeeResponseModel;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttendeeServerResponse(count: $count, attendeeResponseModel: $attendeeResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendeeServerResponse &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._attendeeResponseModel, _attendeeResponseModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count,
      const DeepCollectionEquality().hash(_attendeeResponseModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendeeServerResponseCopyWith<_$_AttendeeServerResponse> get copyWith =>
      __$$_AttendeeServerResponseCopyWithImpl<_$_AttendeeServerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendeeServerResponseToJson(
      this,
    );
  }
}

abstract class _AttendeeServerResponse implements AttendeeServerResponse {
  const factory _AttendeeServerResponse(
          {final int count,
          @JsonKey(name: "attendeeResponseModel")
              final List<AttendeeResponseModel>? attendeeResponseModel}) =
      _$_AttendeeServerResponse;

  factory _AttendeeServerResponse.fromJson(Map<String, dynamic> json) =
      _$_AttendeeServerResponse.fromJson;

  @override
  int get count;
  @override
  @JsonKey(name: "attendeeResponseModel")
  List<AttendeeResponseModel>? get attendeeResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$_AttendeeServerResponseCopyWith<_$_AttendeeServerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendeeResponseModel _$AttendeeResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AttendeeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AttendeeResponseModel {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get mobileNumber => throw _privateConstructorUsedError;
  String? get altContactNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get fatherName => throw _privateConstructorUsedError;
  String? get husbandName => throw _privateConstructorUsedError;
  @JsonKey(name: "nameModel")
  NameModel? get name => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  String? get clientReferenceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendeeResponseModelCopyWith<AttendeeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeResponseModelCopyWith<$Res> {
  factory $AttendeeResponseModelCopyWith(AttendeeResponseModel value,
          $Res Function(AttendeeResponseModel) then) =
      _$AttendeeResponseModelCopyWithImpl<$Res, AttendeeResponseModel>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? mobileNumber,
      String? altContactNumber,
      String? email,
      String? fatherName,
      String? husbandName,
      @JsonKey(name: "nameModel") NameModel? name,
      String? tenantId,
      String? clientReferenceId});

  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class _$AttendeeResponseModelCopyWithImpl<$Res,
        $Val extends AttendeeResponseModel>
    implements $AttendeeResponseModelCopyWith<$Res> {
  _$AttendeeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? mobileNumber = freezed,
    Object? altContactNumber = freezed,
    Object? email = freezed,
    Object? fatherName = freezed,
    Object? husbandName = freezed,
    Object? name = freezed,
    Object? tenantId = freezed,
    Object? clientReferenceId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      altContactNumber: freezed == altContactNumber
          ? _value.altContactNumber
          : altContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      husbandName: freezed == husbandName
          ? _value.husbandName
          : husbandName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReferenceId: freezed == clientReferenceId
          ? _value.clientReferenceId
          : clientReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameModelCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameModelCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AttendeeResponseModelCopyWith<$Res>
    implements $AttendeeResponseModelCopyWith<$Res> {
  factory _$$_AttendeeResponseModelCopyWith(_$_AttendeeResponseModel value,
          $Res Function(_$_AttendeeResponseModel) then) =
      __$$_AttendeeResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? mobileNumber,
      String? altContactNumber,
      String? email,
      String? fatherName,
      String? husbandName,
      @JsonKey(name: "nameModel") NameModel? name,
      String? tenantId,
      String? clientReferenceId});

  @override
  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class __$$_AttendeeResponseModelCopyWithImpl<$Res>
    extends _$AttendeeResponseModelCopyWithImpl<$Res, _$_AttendeeResponseModel>
    implements _$$_AttendeeResponseModelCopyWith<$Res> {
  __$$_AttendeeResponseModelCopyWithImpl(_$_AttendeeResponseModel _value,
      $Res Function(_$_AttendeeResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? mobileNumber = freezed,
    Object? altContactNumber = freezed,
    Object? email = freezed,
    Object? fatherName = freezed,
    Object? husbandName = freezed,
    Object? name = freezed,
    Object? tenantId = freezed,
    Object? clientReferenceId = freezed,
  }) {
    return _then(_$_AttendeeResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      altContactNumber: freezed == altContactNumber
          ? _value.altContactNumber
          : altContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      husbandName: freezed == husbandName
          ? _value.husbandName
          : husbandName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReferenceId: freezed == clientReferenceId
          ? _value.clientReferenceId
          : clientReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendeeResponseModel implements _AttendeeResponseModel {
  const _$_AttendeeResponseModel(
      {this.id,
      this.userId,
      this.mobileNumber,
      this.altContactNumber,
      this.email,
      this.fatherName,
      this.husbandName,
      @JsonKey(name: "nameModel") this.name,
      this.tenantId,
      this.clientReferenceId});

  factory _$_AttendeeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttendeeResponseModelFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? mobileNumber;
  @override
  final String? altContactNumber;
  @override
  final String? email;
  @override
  final String? fatherName;
  @override
  final String? husbandName;
  @override
  @JsonKey(name: "nameModel")
  final NameModel? name;
  @override
  final String? tenantId;
  @override
  final String? clientReferenceId;

  @override
  String toString() {
    return 'AttendeeResponseModel(id: $id, userId: $userId, mobileNumber: $mobileNumber, altContactNumber: $altContactNumber, email: $email, fatherName: $fatherName, husbandName: $husbandName, name: $name, tenantId: $tenantId, clientReferenceId: $clientReferenceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendeeResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.altContactNumber, altContactNumber) ||
                other.altContactNumber == altContactNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.husbandName, husbandName) ||
                other.husbandName == husbandName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.clientReferenceId, clientReferenceId) ||
                other.clientReferenceId == clientReferenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      mobileNumber,
      altContactNumber,
      email,
      fatherName,
      husbandName,
      name,
      tenantId,
      clientReferenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendeeResponseModelCopyWith<_$_AttendeeResponseModel> get copyWith =>
      __$$_AttendeeResponseModelCopyWithImpl<_$_AttendeeResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendeeResponseModelToJson(
      this,
    );
  }
}

abstract class _AttendeeResponseModel implements AttendeeResponseModel {
  const factory _AttendeeResponseModel(
      {final String? id,
      final String? userId,
      final String? mobileNumber,
      final String? altContactNumber,
      final String? email,
      final String? fatherName,
      final String? husbandName,
      @JsonKey(name: "nameModel") final NameModel? name,
      final String? tenantId,
      final String? clientReferenceId}) = _$_AttendeeResponseModel;

  factory _AttendeeResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AttendeeResponseModel.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get mobileNumber;
  @override
  String? get altContactNumber;
  @override
  String? get email;
  @override
  String? get fatherName;
  @override
  String? get husbandName;
  @override
  @JsonKey(name: "nameModel")
  NameModel? get name;
  @override
  String? get tenantId;
  @override
  String? get clientReferenceId;
  @override
  @JsonKey(ignore: true)
  _$$_AttendeeResponseModelCopyWith<_$_AttendeeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NameModel _$NameModelFromJson(Map<String, dynamic> json) {
  return _NameModel.fromJson(json);
}

/// @nodoc
mixin _$NameModel {
  String? get id => throw _privateConstructorUsedError;
  String? get individualClientReferenceId => throw _privateConstructorUsedError;
  String? get givenName => throw _privateConstructorUsedError;
  String? get familyName => throw _privateConstructorUsedError;
  String? get otherNames => throw _privateConstructorUsedError;
  bool? get nonRecoverableError => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  int? get rowVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameModelCopyWith<NameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameModelCopyWith<$Res> {
  factory $NameModelCopyWith(NameModel value, $Res Function(NameModel) then) =
      _$NameModelCopyWithImpl<$Res, NameModel>;
  @useResult
  $Res call(
      {String? id,
      String? individualClientReferenceId,
      String? givenName,
      String? familyName,
      String? otherNames,
      bool? nonRecoverableError,
      String? tenantId,
      int? rowVersion});
}

/// @nodoc
class _$NameModelCopyWithImpl<$Res, $Val extends NameModel>
    implements $NameModelCopyWith<$Res> {
  _$NameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? individualClientReferenceId = freezed,
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? otherNames = freezed,
    Object? nonRecoverableError = freezed,
    Object? tenantId = freezed,
    Object? rowVersion = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      individualClientReferenceId: freezed == individualClientReferenceId
          ? _value.individualClientReferenceId
          : individualClientReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      otherNames: freezed == otherNames
          ? _value.otherNames
          : otherNames // ignore: cast_nullable_to_non_nullable
              as String?,
      nonRecoverableError: freezed == nonRecoverableError
          ? _value.nonRecoverableError
          : nonRecoverableError // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      rowVersion: freezed == rowVersion
          ? _value.rowVersion
          : rowVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameModelCopyWith<$Res> implements $NameModelCopyWith<$Res> {
  factory _$$_NameModelCopyWith(
          _$_NameModel value, $Res Function(_$_NameModel) then) =
      __$$_NameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? individualClientReferenceId,
      String? givenName,
      String? familyName,
      String? otherNames,
      bool? nonRecoverableError,
      String? tenantId,
      int? rowVersion});
}

/// @nodoc
class __$$_NameModelCopyWithImpl<$Res>
    extends _$NameModelCopyWithImpl<$Res, _$_NameModel>
    implements _$$_NameModelCopyWith<$Res> {
  __$$_NameModelCopyWithImpl(
      _$_NameModel _value, $Res Function(_$_NameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? individualClientReferenceId = freezed,
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? otherNames = freezed,
    Object? nonRecoverableError = freezed,
    Object? tenantId = freezed,
    Object? rowVersion = freezed,
  }) {
    return _then(_$_NameModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      individualClientReferenceId: freezed == individualClientReferenceId
          ? _value.individualClientReferenceId
          : individualClientReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      otherNames: freezed == otherNames
          ? _value.otherNames
          : otherNames // ignore: cast_nullable_to_non_nullable
              as String?,
      nonRecoverableError: freezed == nonRecoverableError
          ? _value.nonRecoverableError
          : nonRecoverableError // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      rowVersion: freezed == rowVersion
          ? _value.rowVersion
          : rowVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NameModel implements _NameModel {
  const _$_NameModel(
      {this.id,
      this.individualClientReferenceId,
      this.givenName,
      this.familyName,
      this.otherNames,
      this.nonRecoverableError,
      this.tenantId,
      this.rowVersion});

  factory _$_NameModel.fromJson(Map<String, dynamic> json) =>
      _$$_NameModelFromJson(json);

  @override
  final String? id;
  @override
  final String? individualClientReferenceId;
  @override
  final String? givenName;
  @override
  final String? familyName;
  @override
  final String? otherNames;
  @override
  final bool? nonRecoverableError;
  @override
  final String? tenantId;
  @override
  final int? rowVersion;

  @override
  String toString() {
    return 'NameModel(id: $id, individualClientReferenceId: $individualClientReferenceId, givenName: $givenName, familyName: $familyName, otherNames: $otherNames, nonRecoverableError: $nonRecoverableError, tenantId: $tenantId, rowVersion: $rowVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.individualClientReferenceId,
                    individualClientReferenceId) ||
                other.individualClientReferenceId ==
                    individualClientReferenceId) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.otherNames, otherNames) ||
                other.otherNames == otherNames) &&
            (identical(other.nonRecoverableError, nonRecoverableError) ||
                other.nonRecoverableError == nonRecoverableError) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.rowVersion, rowVersion) ||
                other.rowVersion == rowVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      individualClientReferenceId,
      givenName,
      familyName,
      otherNames,
      nonRecoverableError,
      tenantId,
      rowVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameModelCopyWith<_$_NameModel> get copyWith =>
      __$$_NameModelCopyWithImpl<_$_NameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameModelToJson(
      this,
    );
  }
}

abstract class _NameModel implements NameModel {
  const factory _NameModel(
      {final String? id,
      final String? individualClientReferenceId,
      final String? givenName,
      final String? familyName,
      final String? otherNames,
      final bool? nonRecoverableError,
      final String? tenantId,
      final int? rowVersion}) = _$_NameModel;

  factory _NameModel.fromJson(Map<String, dynamic> json) =
      _$_NameModel.fromJson;

  @override
  String? get id;
  @override
  String? get individualClientReferenceId;
  @override
  String? get givenName;
  @override
  String? get familyName;
  @override
  String? get otherNames;
  @override
  bool? get nonRecoverableError;
  @override
  String? get tenantId;
  @override
  int? get rowVersion;
  @override
  @JsonKey(ignore: true)
  _$$_NameModelCopyWith<_$_NameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
