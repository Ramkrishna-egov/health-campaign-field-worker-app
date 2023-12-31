// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import '../../../models/attendance/attendance_model/attendance_attendee_log.dart';
import '../../../models/attendance/attendance_model/attendance_attendee_model.dart';
import '../../../models/attendance/attendance_model/attendee_wraper_log_model.dart';
import '../../../models/attendance/attendance_registry_model.dart';

class AttendanceRegisterRepository {
  final Dio client;
  final Isar isar;
  AttendanceRegisterRepository(this.client, this.isar);

  Future<AttendanceRegistersModel> searchAttendanceProjects({
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

      var data = await rootBundle.loadString("assets/registar_data.json");

      return AttendanceRegistersModel.fromJson(
        json.decode(
          data.toString(),
        ),
      );
    } on DioError catch (ex) {
      print(ex);
      // Assuming there will be an errorMessage property in the JSON object
      rethrow;
    }
  }

// feting list of individuals
  Future<AttendeeServerResponse> fetchAttendees() async {
    try {
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

  Future<List<AttendeeAttendanceResponseLog>> fetchAttendeesLog({
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

      return dec.attendanceAttendeLog!;
    } on DioError catch (ex) {
      rethrow;
    }
  }
}
