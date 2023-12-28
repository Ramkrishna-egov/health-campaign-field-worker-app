// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import '../../../models/attendance/muster_role_model.dart';
import '../../../models/attendance/muster_sub_role_model.dart';

class AttendanceMusterRepository {
  final Dio client;
  final Isar isar;
  AttendanceMusterRepository(this.client, this.isar);

  // Future<MusterRollsModel> searchAttendanceProjects({
  //   dynamic body,
  //   Map<String, String>? queryParameters,
  //   required String url,
  // }) async {
  //   try {
  //     // var formData = FormData.fromMap(body);
  //     // final response = await _client.post(url,
  //     //     data: body ?? {},
  //     //     queryParameters: queryParameters,
  //     //     options: Options(extra: {
  //     //       "accessToken": "GlobalVariables.authToken",
  //     //       "apiId": "mukta-services",
  //     //     }));

  //     // return AttendanceRegistersModel.fromJson(
  //     //   json.decode(response.toString()),
  //     // );

  //     var data = await rootBundle.loadString("assets/registar_data.json");

  //     return MusterRollsModel.fromJson(
  //       json.decode(
  //         data.toString(),
  //       ),
  //     );
  //   } on DioError catch (ex) {
  //     print(ex);
  //     // Assuming there will be an errorMessage property in the JSON object
  //     rethrow;
  //   }
  // }Future<MusterRollsModel> searchAttendanceProjects({
  //   dynamic body,
  //   Map<String, String>? queryParameters,
  //   required String url,
  // }) async {
  //   try {
  //     // var formData = FormData.fromMap(body);
  //     // final response = await _client.post(url,
  //     //     data: body ?? {},
  //     //     queryParameters: queryParameters,
  //     //     options: Options(extra: {
  //     //       "accessToken": "GlobalVariables.authToken",
  //     //       "apiId": "mukta-services",
  //     //     }));

  //     // return AttendanceRegistersModel.fromJson(
  //     //   json.decode(response.toString()),
  //     // );

  //     var data = await rootBundle.loadString("assets/registar_data.json");

  //     return MusterRollsModel.fromJson(
  //       json.decode(
  //         data.toString(),
  //       ),
  //     );
  //   } on DioError catch (ex) {
  //     print(ex);
  //     // Assuming there will be an errorMessage property in the JSON object
  //     rethrow;
  //   }
  // }

  Future<EstimateMusterRollsModel> searchMusterRolls({
    Map<String, String>? queryParameters,
    dynamic body,
    required Options options,
    required String url,
  }) async {
    try {
      // var formData = FormData.fromMap(body);
      // final response = await _client.post(url,
      //     queryParameters: queryParameters, data: body ?? {}, options: options);

      var data = await rootBundle.loadString("assets/muster_data.json");

      return EstimateMusterRollsModel.fromJson(
        json.decode(data.toString()),
      );
    } on DioError catch (ex) {
      // Assuming there will be an errorMessage property in the JSON object
      rethrow;
    }
  }
}
