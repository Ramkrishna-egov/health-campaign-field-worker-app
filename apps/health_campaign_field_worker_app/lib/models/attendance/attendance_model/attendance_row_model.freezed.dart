// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance_row_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceRowModel _$AttendanceRowModelFromJson(Map<String, dynamic> json) {
  return _AttendanceRowModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRowModel {
  String? get name => throw _privateConstructorUsedError;
  String? get individualId => throw _privateConstructorUsedError;
  int? get entryDate => throw _privateConstructorUsedError;
  int? get existDate => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceRowModelCopyWith<AttendanceRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRowModelCopyWith<$Res> {
  factory $AttendanceRowModelCopyWith(
          AttendanceRowModel value, $Res Function(AttendanceRowModel) then) =
      _$AttendanceRowModelCopyWithImpl<$Res, AttendanceRowModel>;
  @useResult
  $Res call(
      {String? name,
      String? individualId,
      int? entryDate,
      int? existDate,
      String? type,
      int? status});
}

/// @nodoc
class _$AttendanceRowModelCopyWithImpl<$Res, $Val extends AttendanceRowModel>
    implements $AttendanceRowModelCopyWith<$Res> {
  _$AttendanceRowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? individualId = freezed,
    Object? entryDate = freezed,
    Object? existDate = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      entryDate: freezed == entryDate
          ? _value.entryDate
          : entryDate // ignore: cast_nullable_to_non_nullable
              as int?,
      existDate: freezed == existDate
          ? _value.existDate
          : existDate // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceRowModelCopyWith<$Res>
    implements $AttendanceRowModelCopyWith<$Res> {
  factory _$$_AttendanceRowModelCopyWith(_$_AttendanceRowModel value,
          $Res Function(_$_AttendanceRowModel) then) =
      __$$_AttendanceRowModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? individualId,
      int? entryDate,
      int? existDate,
      String? type,
      int? status});
}

/// @nodoc
class __$$_AttendanceRowModelCopyWithImpl<$Res>
    extends _$AttendanceRowModelCopyWithImpl<$Res, _$_AttendanceRowModel>
    implements _$$_AttendanceRowModelCopyWith<$Res> {
  __$$_AttendanceRowModelCopyWithImpl(
      _$_AttendanceRowModel _value, $Res Function(_$_AttendanceRowModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? individualId = freezed,
    Object? entryDate = freezed,
    Object? existDate = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_AttendanceRowModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      individualId: freezed == individualId
          ? _value.individualId
          : individualId // ignore: cast_nullable_to_non_nullable
              as String?,
      entryDate: freezed == entryDate
          ? _value.entryDate
          : entryDate // ignore: cast_nullable_to_non_nullable
              as int?,
      existDate: freezed == existDate
          ? _value.existDate
          : existDate // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceRowModel implements _AttendanceRowModel {
  const _$_AttendanceRowModel(
      {this.name,
      this.individualId,
      this.entryDate,
      this.existDate,
      this.type,
      this.status = -1});

  factory _$_AttendanceRowModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceRowModelFromJson(json);

  @override
  final String? name;
  @override
  final String? individualId;
  @override
  final int? entryDate;
  @override
  final int? existDate;
  @override
  final String? type;
  @override
  @JsonKey()
  final int? status;

  @override
  String toString() {
    return 'AttendanceRowModel(name: $name, individualId: $individualId, entryDate: $entryDate, existDate: $existDate, type: $type, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceRowModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.individualId, individualId) ||
                other.individualId == individualId) &&
            (identical(other.entryDate, entryDate) ||
                other.entryDate == entryDate) &&
            (identical(other.existDate, existDate) ||
                other.existDate == existDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, individualId, entryDate, existDate, type, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceRowModelCopyWith<_$_AttendanceRowModel> get copyWith =>
      __$$_AttendanceRowModelCopyWithImpl<_$_AttendanceRowModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceRowModelToJson(
      this,
    );
  }
}

abstract class _AttendanceRowModel implements AttendanceRowModel {
  const factory _AttendanceRowModel(
      {final String? name,
      final String? individualId,
      final int? entryDate,
      final int? existDate,
      final String? type,
      final int? status}) = _$_AttendanceRowModel;

  factory _AttendanceRowModel.fromJson(Map<String, dynamic> json) =
      _$_AttendanceRowModel.fromJson;

  @override
  String? get name;
  @override
  String? get individualId;
  @override
  int? get entryDate;
  @override
  int? get existDate;
  @override
  String? get type;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceRowModelCopyWith<_$_AttendanceRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
