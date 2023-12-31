import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repositories/remote/repo_attendance_register.dart';
import '../../../models/attendance/attendance_model/attendance_attendee_log.dart';
import '../../../models/attendance/attendance_model/attendance_attendee_model.dart';
import '../../../models/attendance/attendance_model/attendance_row_model.dart';

part 'individual_attendance_log.freezed.dart';

typedef AttendanceIndividualEmitter = Emitter<AttendanceIndividualState>;

class AttendanceIndividualBloc
    extends Bloc<AttendanceIndividualEvent, AttendanceIndividualState> {
  final AttendanceRegisterRepository attendanceRegisterRepository;
  AttendanceIndividualBloc({required this.attendanceRegisterRepository})
      : super(
          const AttendanceIndividualState.initial(),
        ) {
    on<AttendanceIndividualLogSearchEvent>(_onIndividualAttendanceLogSearch);
    on<AttendanceMarkEvent>(_onIndividualAttendanceMark);
    on<DisposeAttendanceIndividualEvent>(_onDispose);
  }

  FutureOr<void> _onDispose(
    DisposeAttendanceIndividualEvent event,
    AttendanceIndividualEmitter emit,
  ) async {
    emit(const AttendanceIndividualState.initial());
  }

  FutureOr<void> _onIndividualAttendanceLogSearch(
    AttendanceIndividualLogSearchEvent event,
    AttendanceIndividualEmitter emit,
  ) async {
    emit(const AttendanceIndividualState.loading());
    AttendeeServerResponse a =
        await attendanceRegisterRepository.fetchAttendees();

    List<AttendeeAttendanceResponseLog> b =
        await attendanceRegisterRepository.fetchAttendeesLog(
      registartId: "registartId",
      fromTime: 9,
      toTime: 10,
      individualId: ["1", "2", "3"],
    );

    List<AttendanceRowModel> data = a.attendeeResponseModel!
        .map(
          (e) => AttendanceRowModel(
            entryDate: b
                    .where((mu) => mu.individualId == e.id)
                    .toList()
                    .isNotEmpty
                ? b
                            .where((element) => element.individualId == e.id)
                            .first
                            .type ==
                        "ENTRY"
                    ? 120
                    : 130
                : 130,
            existDate: b
                    .where((mu) => mu.individualId == e.id)
                    .toList()
                    .isNotEmpty
                ? b
                            .where((element) => element.individualId == e.id)
                            .first
                            .type ==
                        "EXIT"
                    ? 150
                    : 180
                : 180,
            name: e.name!.givenName,
            type: b.where((mu) => mu.individualId == e.id).toList().isNotEmpty
                ? b.where((element) => element.individualId == e.id).first.type
                : "INACTIVE",
            status: b.where((mu) => mu.individualId == e.id).toList().isNotEmpty
                ? b
                            .where((element) => element.individualId == e.id)
                            .first
                            .status ==
                        "ACTIVE"
                    ? 1
                    : 0
                : -1,
            individualId: e.id,
          ),
        )
        .toList();

    await Future.delayed(const Duration(seconds: 3));
    emit(_AttendanceRowModelLoaded(data));
  }

  FutureOr<void> _onIndividualAttendanceMark(
    AttendanceMarkEvent event,
    AttendanceIndividualEmitter emit,
  ) async {
    state.maybeMap(
      loaded: (value) {
        List<AttendanceRowModel> k = value.attendanceRowModelList!.map((e) {
          return e.individualId == event.status.toString()
              ? AttendanceRowModel(
                  name: e.name,
                  individualId: e.individualId,
                  entryDate: e.entryDate,
                  existDate: e.existDate,
                  status: e.status == -1
                      ? 1
                      : e.status == 1
                          ? 0
                          : 1,
                  type: e.type,
                )
              : e;
        }).toList();

        emit(value.copyWith(attendanceRowModelList: k));
      },
      orElse: () {},
    );
  }
}

@freezed
class AttendanceIndividualEvent with _$AttendanceIndividualEvent {
  const factory AttendanceIndividualEvent.individualAttendanceLogSearch({
    @Default('') String registerId,
    @Default('') String tenantId,
    required List<String> attendeeId,
    required int offset,
    required int limit,
  }) = AttendanceIndividualLogSearchEvent;
  const factory AttendanceIndividualEvent.individualAttendanceMark({
    @Default(0) int entryTime,
    @Default(0) int exitTime,
    @Default(-1) status,
    required String individualId,
    required String registarId,
  }) = AttendanceMarkEvent;
  const factory AttendanceIndividualEvent.dispose() =
      DisposeAttendanceIndividualEvent;
}

@freezed
class AttendanceIndividualState with _$AttendanceIndividualState {
  const AttendanceIndividualState._();

  const factory AttendanceIndividualState.initial() = _Initial;
  const factory AttendanceIndividualState.loading() = _Loading;
  const factory AttendanceIndividualState.loaded(
    List<AttendanceRowModel>? attendanceRowModelList,
  ) = _AttendanceRowModelLoaded;
  const factory AttendanceIndividualState.error(String? error) = _Error;
}
