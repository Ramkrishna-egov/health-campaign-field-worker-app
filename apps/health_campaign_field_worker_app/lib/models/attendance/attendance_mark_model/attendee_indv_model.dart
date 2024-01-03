import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendee_indv_model.freezed.dart';
part 'attendee_indv_model.g.dart';

@freezed
class AttendanceMarkIndividualModel with _$AttendanceMarkIndividualModel {
  factory AttendanceMarkIndividualModel({
    @JsonKey(name: 'Individual')
        List<AttendanceMarkIndividualModel>? attendanceRegister,
  }) = _AttendanceMarkIndividualModel;

  factory AttendanceMarkIndividualModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendanceMarkIndividualModelFromJson(json);
}

@freezed
class AttendanceMarkIndividual with _$AttendanceMarkIndividual {
  factory AttendanceMarkIndividual({
    String? id,
    String? individualId,
    String? tenantId,
    String? clientReferenceId,
    @JsonKey(name: 'name') NameData? name,
    List<AttendanceMarkIndividualModel>? attendanceRegister,
  }) = _AttendanceMarkIndividual;

  factory AttendanceMarkIndividual.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AttendanceMarkIndividualFromJson(json);
}

@freezed
class NameData with _$NameData {
  factory NameData({
    String? givenName,
    String? familyName,
    String? otherNames,
  }) = _NameData;

  factory NameData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NameDataFromJson(json);
}
