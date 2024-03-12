// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendee_indv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceMarkIndividualModel _$AttendanceMarkIndividualModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceMarkIndividualModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceMarkIndividualModel {
  @JsonKey(name: 'Individual')
  List<AttendanceMarkIndividual>? get attendanceRegister =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceMarkIndividualModelCopyWith<AttendanceMarkIndividualModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceMarkIndividualModelCopyWith<$Res> {
  factory $AttendanceMarkIndividualModelCopyWith(
          AttendanceMarkIndividualModel value,
          $Res Function(AttendanceMarkIndividualModel) then) =
      _$AttendanceMarkIndividualModelCopyWithImpl<$Res,
          AttendanceMarkIndividualModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Individual')
      List<AttendanceMarkIndividual>? attendanceRegister});
}

/// @nodoc
class _$AttendanceMarkIndividualModelCopyWithImpl<$Res,
        $Val extends AttendanceMarkIndividualModel>
    implements $AttendanceMarkIndividualModelCopyWith<$Res> {
  _$AttendanceMarkIndividualModelCopyWithImpl(this._value, this._then);

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
              as List<AttendanceMarkIndividual>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceMarkIndividualModelImplCopyWith<$Res>
    implements $AttendanceMarkIndividualModelCopyWith<$Res> {
  factory _$$AttendanceMarkIndividualModelImplCopyWith(
          _$AttendanceMarkIndividualModelImpl value,
          $Res Function(_$AttendanceMarkIndividualModelImpl) then) =
      __$$AttendanceMarkIndividualModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Individual')
      List<AttendanceMarkIndividual>? attendanceRegister});
}

/// @nodoc
class __$$AttendanceMarkIndividualModelImplCopyWithImpl<$Res>
    extends _$AttendanceMarkIndividualModelCopyWithImpl<$Res,
        _$AttendanceMarkIndividualModelImpl>
    implements _$$AttendanceMarkIndividualModelImplCopyWith<$Res> {
  __$$AttendanceMarkIndividualModelImplCopyWithImpl(
      _$AttendanceMarkIndividualModelImpl _value,
      $Res Function(_$AttendanceMarkIndividualModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRegister = freezed,
  }) {
    return _then(_$AttendanceMarkIndividualModelImpl(
      attendanceRegister: freezed == attendanceRegister
          ? _value._attendanceRegister
          : attendanceRegister // ignore: cast_nullable_to_non_nullable
              as List<AttendanceMarkIndividual>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceMarkIndividualModelImpl
    implements _AttendanceMarkIndividualModel {
  _$AttendanceMarkIndividualModelImpl(
      {@JsonKey(name: 'Individual')
      final List<AttendanceMarkIndividual>? attendanceRegister})
      : _attendanceRegister = attendanceRegister;

  factory _$AttendanceMarkIndividualModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendanceMarkIndividualModelImplFromJson(json);

  final List<AttendanceMarkIndividual>? _attendanceRegister;
  @override
  @JsonKey(name: 'Individual')
  List<AttendanceMarkIndividual>? get attendanceRegister {
    final value = _attendanceRegister;
    if (value == null) return null;
    if (_attendanceRegister is EqualUnmodifiableListView)
      return _attendanceRegister;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttendanceMarkIndividualModel(attendanceRegister: $attendanceRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMarkIndividualModelImpl &&
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
  _$$AttendanceMarkIndividualModelImplCopyWith<
          _$AttendanceMarkIndividualModelImpl>
      get copyWith => __$$AttendanceMarkIndividualModelImplCopyWithImpl<
          _$AttendanceMarkIndividualModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceMarkIndividualModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceMarkIndividualModel
    implements AttendanceMarkIndividualModel {
  factory _AttendanceMarkIndividualModel(
          {@JsonKey(name: 'Individual')
          final List<AttendanceMarkIndividual>? attendanceRegister}) =
      _$AttendanceMarkIndividualModelImpl;

  factory _AttendanceMarkIndividualModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceMarkIndividualModelImpl.fromJson;

  @override
  @JsonKey(name: 'Individual')
  List<AttendanceMarkIndividual>? get attendanceRegister;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceMarkIndividualModelImplCopyWith<
          _$AttendanceMarkIndividualModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceMarkIndividual _$AttendanceMarkIndividualFromJson(
    Map<String, dynamic> json) {
  return _AttendanceMarkIndividual.fromJson(json);
}

/// @nodoc
mixin _$AttendanceMarkIndividual {
  String? get id => throw _privateConstructorUsedError;
  String? get individualId => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  String? get clientReferenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  NameData? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'userDetails')
  UserDetails? get userDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceMarkIndividualCopyWith<AttendanceMarkIndividual> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceMarkIndividualCopyWith<$Res> {
  factory $AttendanceMarkIndividualCopyWith(AttendanceMarkIndividual value,
          $Res Function(AttendanceMarkIndividual) then) =
      _$AttendanceMarkIndividualCopyWithImpl<$Res, AttendanceMarkIndividual>;
  @useResult
  $Res call(
      {String? id,
      String? individualId,
      String? tenantId,
      String? clientReferenceId,
      @JsonKey(name: 'name') NameData? name,
      @JsonKey(name: 'userDetails') UserDetails? userDetails});

  $NameDataCopyWith<$Res>? get name;
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class _$AttendanceMarkIndividualCopyWithImpl<$Res,
        $Val extends AttendanceMarkIndividual>
    implements $AttendanceMarkIndividualCopyWith<$Res> {
  _$AttendanceMarkIndividualCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? individualId = freezed,
    Object? tenantId = freezed,
    Object? clientReferenceId = freezed,
    Object? name = freezed,
    Object? userDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReferenceId: freezed == clientReferenceId
          ? _value.clientReferenceId
          : clientReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameData?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameDataCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameDataCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsCopyWith<$Res>? get userDetails {
    if (_value.userDetails == null) {
      return null;
    }

    return $UserDetailsCopyWith<$Res>(_value.userDetails!, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceMarkIndividualImplCopyWith<$Res>
    implements $AttendanceMarkIndividualCopyWith<$Res> {
  factory _$$AttendanceMarkIndividualImplCopyWith(
          _$AttendanceMarkIndividualImpl value,
          $Res Function(_$AttendanceMarkIndividualImpl) then) =
      __$$AttendanceMarkIndividualImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? individualId,
      String? tenantId,
      String? clientReferenceId,
      @JsonKey(name: 'name') NameData? name,
      @JsonKey(name: 'userDetails') UserDetails? userDetails});

  @override
  $NameDataCopyWith<$Res>? get name;
  @override
  $UserDetailsCopyWith<$Res>? get userDetails;
}

/// @nodoc
class __$$AttendanceMarkIndividualImplCopyWithImpl<$Res>
    extends _$AttendanceMarkIndividualCopyWithImpl<$Res,
        _$AttendanceMarkIndividualImpl>
    implements _$$AttendanceMarkIndividualImplCopyWith<$Res> {
  __$$AttendanceMarkIndividualImplCopyWithImpl(
      _$AttendanceMarkIndividualImpl _value,
      $Res Function(_$AttendanceMarkIndividualImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? individualId = freezed,
    Object? tenantId = freezed,
    Object? clientReferenceId = freezed,
    Object? name = freezed,
    Object? userDetails = freezed,
  }) {
    return _then(_$AttendanceMarkIndividualImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReferenceId: freezed == clientReferenceId
          ? _value.clientReferenceId
          : clientReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameData?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceMarkIndividualImpl implements _AttendanceMarkIndividual {
  _$AttendanceMarkIndividualImpl(
      {this.id,
      this.individualId,
      this.tenantId,
      this.clientReferenceId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'userDetails') this.userDetails});

  factory _$AttendanceMarkIndividualImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceMarkIndividualImplFromJson(json);

  @override
  final String? id;
  @override
  final String? individualId;
  @override
  final String? tenantId;
  @override
  final String? clientReferenceId;
  @override
  @JsonKey(name: 'name')
  final NameData? name;
  @override
  @JsonKey(name: 'userDetails')
  final UserDetails? userDetails;

  @override
  String toString() {
    return 'AttendanceMarkIndividual(id: $id, individualId: $individualId, tenantId: $tenantId, clientReferenceId: $clientReferenceId, name: $name, userDetails: $userDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceMarkIndividualImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.individualId, individualId) ||
                other.individualId == individualId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.clientReferenceId, clientReferenceId) ||
                other.clientReferenceId == clientReferenceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, individualId, tenantId,
      clientReferenceId, name, userDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceMarkIndividualImplCopyWith<_$AttendanceMarkIndividualImpl>
      get copyWith => __$$AttendanceMarkIndividualImplCopyWithImpl<
          _$AttendanceMarkIndividualImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceMarkIndividualImplToJson(
      this,
    );
  }
}

abstract class _AttendanceMarkIndividual implements AttendanceMarkIndividual {
  factory _AttendanceMarkIndividual(
          {final String? id,
          final String? individualId,
          final String? tenantId,
          final String? clientReferenceId,
          @JsonKey(name: 'name') final NameData? name,
          @JsonKey(name: 'userDetails') final UserDetails? userDetails}) =
      _$AttendanceMarkIndividualImpl;

  factory _AttendanceMarkIndividual.fromJson(Map<String, dynamic> json) =
      _$AttendanceMarkIndividualImpl.fromJson;

  @override
  String? get id;
  @override
  String? get individualId;
  @override
  String? get tenantId;
  @override
  String? get clientReferenceId;
  @override
  @JsonKey(name: 'name')
  NameData? get name;
  @override
  @JsonKey(name: 'userDetails')
  UserDetails? get userDetails;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceMarkIndividualImplCopyWith<_$AttendanceMarkIndividualImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NameData _$NameDataFromJson(Map<String, dynamic> json) {
  return _NameData.fromJson(json);
}

/// @nodoc
mixin _$NameData {
  String? get givenName => throw _privateConstructorUsedError;
  String? get familyName => throw _privateConstructorUsedError;
  String? get otherNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameDataCopyWith<NameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameDataCopyWith<$Res> {
  factory $NameDataCopyWith(NameData value, $Res Function(NameData) then) =
      _$NameDataCopyWithImpl<$Res, NameData>;
  @useResult
  $Res call({String? givenName, String? familyName, String? otherNames});
}

/// @nodoc
class _$NameDataCopyWithImpl<$Res, $Val extends NameData>
    implements $NameDataCopyWith<$Res> {
  _$NameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? otherNames = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameDataImplCopyWith<$Res>
    implements $NameDataCopyWith<$Res> {
  factory _$$NameDataImplCopyWith(
          _$NameDataImpl value, $Res Function(_$NameDataImpl) then) =
      __$$NameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? givenName, String? familyName, String? otherNames});
}

/// @nodoc
class __$$NameDataImplCopyWithImpl<$Res>
    extends _$NameDataCopyWithImpl<$Res, _$NameDataImpl>
    implements _$$NameDataImplCopyWith<$Res> {
  __$$NameDataImplCopyWithImpl(
      _$NameDataImpl _value, $Res Function(_$NameDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? otherNames = freezed,
  }) {
    return _then(_$NameDataImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameDataImpl implements _NameData {
  _$NameDataImpl({this.givenName, this.familyName, this.otherNames});

  factory _$NameDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameDataImplFromJson(json);

  @override
  final String? givenName;
  @override
  final String? familyName;
  @override
  final String? otherNames;

  @override
  String toString() {
    return 'NameData(givenName: $givenName, familyName: $familyName, otherNames: $otherNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameDataImpl &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.otherNames, otherNames) ||
                other.otherNames == otherNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, givenName, familyName, otherNames);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameDataImplCopyWith<_$NameDataImpl> get copyWith =>
      __$$NameDataImplCopyWithImpl<_$NameDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameDataImplToJson(
      this,
    );
  }
}

abstract class _NameData implements NameData {
  factory _NameData(
      {final String? givenName,
      final String? familyName,
      final String? otherNames}) = _$NameDataImpl;

  factory _NameData.fromJson(Map<String, dynamic> json) =
      _$NameDataImpl.fromJson;

  @override
  String? get givenName;
  @override
  String? get familyName;
  @override
  String? get otherNames;
  @override
  @JsonKey(ignore: true)
  _$$NameDataImplCopyWith<_$NameDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
mixin _$UserDetails {
  String? get username => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<Role>? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res, UserDetails>;
  @useResult
  $Res call(
      {String? username,
      String? tenantId,
      String? type,
      @JsonKey(name: 'roles') List<Role>? role});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res, $Val extends UserDetails>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? tenantId = freezed,
    Object? type = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsImplCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$UserDetailsImplCopyWith(
          _$UserDetailsImpl value, $Res Function(_$UserDetailsImpl) then) =
      __$$UserDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? tenantId,
      String? type,
      @JsonKey(name: 'roles') List<Role>? role});
}

/// @nodoc
class __$$UserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$UserDetailsImpl>
    implements _$$UserDetailsImplCopyWith<$Res> {
  __$$UserDetailsImplCopyWithImpl(
      _$UserDetailsImpl _value, $Res Function(_$UserDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? tenantId = freezed,
    Object? type = freezed,
    Object? role = freezed,
  }) {
    return _then(_$UserDetailsImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsImpl implements _UserDetails {
  _$UserDetailsImpl(
      {this.username,
      this.tenantId,
      this.type,
      @JsonKey(name: 'roles') final List<Role>? role})
      : _role = role;

  factory _$UserDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsImplFromJson(json);

  @override
  final String? username;
  @override
  final String? tenantId;
  @override
  final String? type;
  final List<Role>? _role;
  @override
  @JsonKey(name: 'roles')
  List<Role>? get role {
    final value = _role;
    if (value == null) return null;
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserDetails(username: $username, tenantId: $tenantId, type: $type, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._role, _role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, tenantId, type,
      const DeepCollectionEquality().hash(_role));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      __$$UserDetailsImplCopyWithImpl<_$UserDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsImplToJson(
      this,
    );
  }
}

abstract class _UserDetails implements UserDetails {
  factory _UserDetails(
      {final String? username,
      final String? tenantId,
      final String? type,
      @JsonKey(name: 'roles') final List<Role>? role}) = _$UserDetailsImpl;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$UserDetailsImpl.fromJson;

  @override
  String? get username;
  @override
  String? get tenantId;
  @override
  String? get type;
  @override
  @JsonKey(name: 'roles')
  List<Role>? get role;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({String? name, String? code, String? description});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
          _$RoleImpl value, $Res Function(_$RoleImpl) then) =
      __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code, String? description});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_$RoleImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  _$RoleImpl({this.name, this.code, this.description});

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? description;

  @override
  String toString() {
    return 'Role(name: $name, code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  factory _Role(
      {final String? name,
      final String? code,
      final String? description}) = _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
