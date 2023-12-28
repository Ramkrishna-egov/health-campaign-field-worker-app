// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
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
}
