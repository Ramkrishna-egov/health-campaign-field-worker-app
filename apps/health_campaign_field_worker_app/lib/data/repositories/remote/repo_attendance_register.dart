// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import '../../../models/attendance/attendance_mark_model/register_model.dart';
import '../../../models/attendance/attendance_model/attendance_attendee_log.dart';
import '../../../models/attendance/attendance_model/attendance_attendee_model.dart';
import '../../../models/attendance/attendance_model/attendee_wraper_log_model.dart';
import '../../../models/attendance/attendance_registry_model.dart';
import '../../../utils/utils.dart';
import '../../local_store/no_sql/schema/absent_attendee.dart';

class AttendanceRegisterRepository {
  final Dio client;
  final Isar isar;
  AttendanceRegisterRepository(this.client, this.isar);

  Future<AttendanceMarkRegisterModelResponse> searchAttendanceProjects({
    dynamic body,
    Map<String, String>? queryParameters,
    required String url,
  }) async {
    try {
      // var formData = FormData.fromMap(body);
      // final response = await _client.post(url,
      //     data: body ?? {},
      //     queryParameters: queryParameters,
      //     options: Options(extra: {
      //       "accessToken": "GlobalVariables.authToken",
      //       "apiId": "mukta-services",
      //     }));

      // return AttendanceRegistersModel.fromJson(
      //   json.decode(response.toString()),
      // );

      var g =
          ApiUtil.fetchRegisters("823f9d7c-4a19-4e46-ab5e-bc21685f515d", "lb");
      var res = await client.post(
        // "attendance/v1/_search",
        // queryParameters: {
        //   "tenantId": "lb",
        //   "referenceId": "823f9d7c-4a19-4e46-ab5e-bc21685f515d",
        // },
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
            "authToken": "cf05ac59-62e8-4096-ba04-aa30850ef633",
          },
        },
      );
      // var data = await rootBundle.loadString("assets/registar_data.json");

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
  Future<AttendeeServerResponse> fetchAttendees({
    required List<String> attendeeids,
    required String tenantId,
    required int limit,
    required int offset,
  }) async {
    try {
      var g = ApiUtil.fetchIndividuals(
          limit: limit, offset: offset, tenantId: tenantId);
      var res = await client.post(
        // "attendance/v1/_search",
        // queryParameters: {
        //   "tenantId": "lb",
        //   "referenceId": "823f9d7c-4a19-4e46-ab5e-bc21685f515d",
        // },
        g,
        data: {
          "RequestInfo": {
            "authToken": "cf05ac59-62e8-4096-ba04-aa30850ef633",
          },
          "Individual": {
            "id": [
              "ba13b724-093a-4e05-b7b0-048159cd7908",
            ],
          },
        },
      );

      var data = await rootBundle.loadString("assets/attendees.json");

      return AttendeeServerResponse.fromJson(
        json.decode(
          data.toString(),
        ),
      );
    } on DioError catch (ex) {
      rethrow;
    }
  }

// fetch list of individuals attendance log

  Future<AttendeeLogWrappperResponse> fetchAttendeesLog({
    required String registartId,
    required int fromTime,
    required toTime,
    required List<String> individualId,
  }) async {
    try {
      var data = await rootBundle.loadString("assets/attendee_log.json");

      AttendeeLogWrappperResponse dec = AttendeeLogWrappperResponse.fromJson(
        json.decode(
          data.toString(),
        ),
      );

      return dec;
    } on DioError catch (ex) {
      rethrow;
    }
  }

// create attendance log

  Future<AttendeeLogWrappperResponse> createAttendanceLog({
    required String registartId,
    required int fromTime,
    required toTime,
    required List<Map<String, dynamic>> attedeesList,
  }) async {
    try {
      var data = await rootBundle.loadString("assets/attendee_log.json");

      AttendeeLogWrappperResponse dec = AttendeeLogWrappperResponse.fromJson(
        json.decode(
          data.toString(),
        ),
      );

      return dec;
    } on DioError catch (ex) {
      rethrow;
    }
  }

// storeAbsentAttendance in local nosql db(ISAR)
  Future<dynamic> storeAbsentAttendee(AbsentAttendee absentAttendee) async {
    int s = await isar.writeTxn(() async {
      int id = await isar.absentAttendees.put(absentAttendee);

      return id;
    });

    return s;
  }
}
