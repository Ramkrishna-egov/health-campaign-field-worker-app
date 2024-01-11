// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import '../../../models/attendance/attendance_mark_model/attendee_indv_model.dart';
import '../../../models/attendance/attendance_mark_model/register_model.dart';

import '../../../utils/utils.dart';
import '../../local_store/no_sql/schema/absent_attendee.dart';
import '../../local_store/secure_store/secure_store.dart';

class AttendanceRegisterRepository {
  final Dio client;
  final Isar isar;
  AttendanceRegisterRepository(this.client, this.isar);

  Future<AttendanceMarkRegisterModelResponse> searchAttendanceProjects({
    required String projectId,
    required String tenantId,
  }) async {
    try {
      final auth = await LocalSecureStore.instance.accessToken;
      var g = ApiUtil.fetchRegisters(projectId, tenantId);
      var res = await client.post(
        g,
        data: {
          "RequestInfo": {
            "apiId": "mukta-services",
            "ver": null,
            "ts": null,
            "action": null,
            "did": null,
            "key": null,
            "msgId": "Create Attendance Register",
            "authToken": auth.toString(),
          },
        },
      );

      return AttendanceMarkRegisterModelResponse.fromJson(
        json.decode(
          res.toString(),
        ),
      );
    } on DioError catch (ex) {
      print(ex);
      // Assuming there will be an errorMessage property in the JSON object
      rethrow;
    }
  }

// feting list of individuals
  Future<AttendanceMarkIndividualModel> fetchAttendees({
    required List<String> attendeeids,
    required String tenantId,
    required int limit,
    required int offset,
  }) async {
    try {
      var g = ApiUtil.fetchIndividuals(
        limit: limit,
        offset: offset,
        tenantId: tenantId,
      );
      final auth = await LocalSecureStore.instance.accessToken;
      var res = await client.post(
        g,
        data: {
          "RequestInfo": {
            "authToken": auth.toString(),
          },
          "Individual": {
            "id": attendeeids,
          },
        },
      );

      return AttendanceMarkIndividualModel.fromJson(
        json.decode(
          res.toString(),
        ),
      );
    } on DioError catch (ex) {
      rethrow;
    }
  }

  Future<bool> createAttendanceLog({
    required String registartId,
    required List<Map<String, dynamic>> attedeesList,
  }) async {
    try {
      final auth = await LocalSecureStore.instance.accessToken;
      final res = await client.post(
        ApiUtil.createAttendanceLog(),
        data: {
          "requestInfo": {
            "apiId": "mukta-services",
            "ver": null,
            "ts": 0,
            "action": null,
            "did": null,
            "key": null,
            "msgId": "creating the attendance log",
            "requesterId": registartId,
            "authToken": auth.toString(),
          },
          "attendance": attedeesList,
        },
      );

      return true;
    } on DioError catch (ex) {
      rethrow;
    }
  }

// storeAbsentAttendance in local nosql db(ISAR)
  Future<void> storeAbsentAttendee(List<AbsentAttendee> absentAttendee) async {
    await isar.writeTxn(() async {
      await isar.absentAttendees.putAll(absentAttendee);
    });
  }

  Future<List<AbsentAttendee>> getAttendeeListFromLocalDB({
    required String tenantId,
    required int entryTime,
    required int exitTime,
    required String registarId,
  }) async {
    List<AbsentAttendee> attendeeList = await isar.absentAttendees
        .filter()
        .tenantIdContains(tenantId)
        .entryTimeEqualTo(entryTime)
        .exitTimeEqualTo(exitTime)
        .registerIdContains(registarId)
        .findAll();

    return attendeeList;
  }

  Future<void> updateAttendeeInLocalDB({
    required int id,
  }) async {
    try {
      await isar.writeTxn(() async {
        AbsentAttendee? data = await isar.absentAttendees.get(id);

        data!.status = data!.status == -1
            ? 1
            : data!.status == 1
                ? 0
                : 1;

        await isar.absentAttendees.put(data);
      });
    } catch (ex) {
      rethrow;
    }
  }
}
