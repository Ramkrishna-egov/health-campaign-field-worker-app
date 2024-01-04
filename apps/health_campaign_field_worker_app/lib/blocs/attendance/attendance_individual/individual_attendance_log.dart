import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/local_store/no_sql/schema/absent_attendee.dart';
import '../../../data/repositories/remote/repo_attendance_register.dart';
import '../../../models/attendance/attendance_mark_model/attendee_indv_model.dart';

import '../../../models/attendance/attendance_model/attendance_collection_attendee.dart';
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
    List<AbsentAttendee> filterData =
        await attendanceRegisterRepository.getAttendeeListFromLocalDB(
      tenantId: event.tenantId,
      entryTime: event.entryTime,
      exitTime: event.exitTime,
      registarId: event.registerId,
    );
    if (filterData.isEmpty) {
      emit(const AttendanceIndividualState.loading());
      AttendanceMarkIndividualModel a =
          await attendanceRegisterRepository.fetchAttendees(
        attendeeids: event.attendeeId,
        limit: 1000,
        offset: 0,
        tenantId: event.tenantId,
      );

      List<AbsentAttendee> wq = a.attendanceRegister!.map(
        (e) {
          final absentAttendee = AbsentAttendee()
            ..name = e.name!.givenName ?? ""
            ..entryTime = event.entryTime
            ..exitTime = event.exitTime
            ..eventStartDate = event.currentDate
            ..eventEndDate = event.currentDate
            ..individualId = e.id!
            ..projectId = event.projectId
            ..status = -1
            ..currentDate = 12334567
            ..registerId = event.registerId
            ..tenantId = event.tenantId;

          return absentAttendee;
        },
      ).toList();

      await attendanceRegisterRepository.storeAbsentAttendee(wq);

      List<AttendeeCollectionModel> emitData = wq.map((e) {
        AttendeeCollectionModel s = AttendeeCollectionModel(
          entryTime: e.entryTime,
          name: e.name,
          individualId: e.individualId,
          exitTime: e.exitTime,
          eventStartDate: e.eventStartDate,
          eventEndDate: e.eventEndDate,
          status: e.status,
          id: e.id,
        );

        return s;
      }).toList();

      emit(
        _AttendanceRowModelLoaded(
          attendanceCollectionModel: emitData,
          // attendanceRowModelList: data,
          countData: 10,
          limitData: event.limit,
          offsetData: event.offset,
          currentOffset: event.offset,
        ),
      );
    } else {
      List<AttendeeCollectionModel> emitData = filterData.map((e) {
        AttendeeCollectionModel s = AttendeeCollectionModel(
          id: e.id,
          entryTime: e.entryTime,
          name: e.name,
          individualId: e.individualId,
          exitTime: e.exitTime,
          eventStartDate: e.eventStartDate,
          eventEndDate: e.eventEndDate,
          status: e.status,
        );

        return s;
      }).toList();
      print(emitData.first.name);
      emit(
        _AttendanceRowModelLoaded(
          attendanceCollectionModel: emitData,
          // attendanceRowModelList: data,
          countData: 10,
          limitData: event.limit,
          offsetData: event.offset,
          currentOffset: event.offset,
        ),
      );
    }
  }

  FutureOr<void> _onIndividualAttendanceMark(
    AttendanceMarkEvent event,
    AttendanceIndividualEmitter emit,
  ) async {
    await state.maybeMap(
      loaded: (value) async {
        value.attendanceCollectionModel;
        AbsentAttendee s = await attendanceRegisterRepository
            .updateAttendeeInLocalDB(id: event.id);
        List<AttendeeCollectionModel> updatedList =
            value.attendanceCollectionModel!.map((e) {
          if (e.id == event.id) {
            AttendeeCollectionModel s = AttendeeCollectionModel(
              id: e.id,
              entryTime: e.entryTime,
              name: e.name,
              individualId: e.individualId,
              exitTime: e.exitTime,
              eventStartDate: e.eventStartDate,
              eventEndDate: e.eventEndDate,
              status: e.status == -1
                  ? 1
                  : e.status == 1
                      ? 0
                      : 1,
            );

            return s;
          } else {
            return e;
          }
        }).toList();

        emit(value.copyWith(attendanceCollectionModel: updatedList));
      },
      orElse: () {},
    );
  }
}

@freezed
class AttendanceIndividualEvent with _$AttendanceIndividualEvent {
  const factory AttendanceIndividualEvent.individualAttendanceLogSearch({
    required String registerId,
    required String tenantId,
    required int entryTime,
    required int exitTime,
    required int currentDate,
    required String projectId,
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
    required int id,
  }) = AttendanceMarkEvent;
  const factory AttendanceIndividualEvent.dispose() =
      DisposeAttendanceIndividualEvent;
}

@freezed
class AttendanceIndividualState with _$AttendanceIndividualState {
  const AttendanceIndividualState._();

  const factory AttendanceIndividualState.initial() = _Initial;
  const factory AttendanceIndividualState.loading() = _Loading;
  factory AttendanceIndividualState.loaded({
    List<AttendanceRowModel>? attendanceRowModelList,
    List<AttendeeCollectionModel>? attendanceCollectionModel,
    @Default(0) int offsetData,
    @Default(0) int currentOffset,
    @Default(0) int countData,
    @Default(10) int limitData,
  }) = _AttendanceRowModelLoaded;
  const factory AttendanceIndividualState.error(String? error) = _Error;
}
