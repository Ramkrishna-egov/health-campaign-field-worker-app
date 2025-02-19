import 'dart:async';
import 'dart:convert';

import 'package:digit_components/digit_components.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../models/data_model.dart';
import '../utils/constants.dart';
import '../utils/environment_config.dart';
import 'local_store/sql_store/sql_store.dart';
import 'repositories/oplog/oplog.dart';

abstract class DataRepository<D extends EntityModel,
    R extends EntitySearchModel> {
  const DataRepository();

  DataModelType get type;

  FutureOr<List<D>> search(
    R query,
  );

  FutureOr<dynamic> create(D entity);

  FutureOr<dynamic> update(D entity);

  FutureOr<dynamic> delete(D entity);
}

abstract class RemoteRepository<D extends EntityModel,
    R extends EntitySearchModel> extends DataRepository<D, R> {
  final Dio dio;
  final String entityName;
  final bool isPlural;
  final bool isSearchResponsePlural;

  final Map<ApiOperation, String> actionMap;

  String get entityNamePlural =>
      EntityPlurals.getPluralForEntityName(entityName);

  String get createPath => actionMap[ApiOperation.create] ?? '';

  String get updatePath => actionMap[ApiOperation.update] ?? '';

  String get searchPath => actionMap[ApiOperation.search] ?? '';

  String get bulkCreatePath {
    return actionMap[ApiOperation.bulkCreate] ?? '';
  }

  String get bulkUpdatePath => actionMap[ApiOperation.bulkUpdate] ?? '';

  String get bulkDeletePath => actionMap[ApiOperation.bulkDelete] ?? '';

  RemoteRepository(
    this.dio, {
    required this.actionMap,
    required this.entityName,
    this.isPlural = false,
    this.isSearchResponsePlural = false,
  });

  @override
  FutureOr<List<D>> search(
    R query,
  ) async {
    Response response;

    try {
      response = await executeFuture(
        future: () async {
          return await dio.post(
            searchPath,
            queryParameters: {
              'offset': 0,
              'limit': 100,
              'tenantId': envConfig.variables.tenantId,
            },
            data: {
              isPlural
                  ? entityNamePlural
                  : entityName == 'ServiceDefinition'
                      ? 'ServiceDefinitionCriteria'
                      : entityName: isPlural ? [query.toMap()] : query.toMap(),
            },
          );
        },
      );
    } catch (error) {
      return [];
    }

    final responseMap = (response.data);

    if (responseMap is! Map<String, dynamic>) {
      throw InvalidApiResponseException(
        data: query.toMap(),
        path: searchPath,
        response: responseMap,
      );
    }

    if (!responseMap.containsKey(
      (isSearchResponsePlural || entityName == 'ServiceDefinition')
          ? entityNamePlural
          : entityName,
    )) {
      throw InvalidApiResponseException(
        data: query.toMap(),
        path: searchPath,
        response: responseMap,
      );
    }

    final entityResponse = await responseMap[
        (isSearchResponsePlural || entityName == 'ServiceDefinition')
            ? entityNamePlural
            : entityName];
    if (entityResponse is! List) {
      throw InvalidApiResponseException(
        data: query.toMap(),
        path: searchPath,
        response: responseMap,
      );
    }

    final entityList = entityResponse.whereType<Map<String, dynamic>>();

    return entityList.map((e) => Mapper.fromMap<D>(e)).toList();
  }

  FutureOr<Response> singleCreate(D entity) async {
    return await dio.post(
      createPath,
      data: {
        'Service': entity.toMap(),
        "apiOperation": "CREATE",
      },
    );
  }

  @override
  FutureOr<Response> create(D entity) async {
    return executeFuture(
      future: () async {
        return await dio.post(
          createPath,
          data: {
            entityName: [entity.toMap()],
            "apiOperation": "CREATE",
          },
        );
      },
    );
  }

  @override
  FutureOr<Response> delete(D entity) async {
    return executeFuture(
      future: () async {
        return await dio.post(
          createPath,
          data: {
            EntityPlurals.getPluralForEntityName(entityName): [entity.toMap()],
            "apiOperation": "DELETE",
          },
        );
      },
    );
  }

  FutureOr<Response> bulkCreate(List<EntityModel> entities) async {
    return executeFuture(
      future: () async {
        return await dio.post(
          bulkCreatePath,
          options: Options(headers: {
            "content-type": 'application/json',
          }),
          data: {
            EntityPlurals.getPluralForEntityName(entityName): _getMap(entities),
          },
        );
      },
    );
  }

  FutureOr<Response> bulkUpdate(List<EntityModel> entities) async {
    return executeFuture(
      future: () async {
        return await dio.post(
          bulkUpdatePath,
          options: Options(headers: {
            "content-type": 'application/json',
          }),
          data: {
            EntityPlurals.getPluralForEntityName(entityName): _getMap(entities),
            "apiOperation": "UPDATE",
          },
        );
      },
    );
  }

  FutureOr<Response> bulkDelete(List<EntityModel> entities) async {
    return executeFuture(
      future: () async {
        return await dio.post(
          bulkDeletePath,
          options: Options(headers: {
            "content-type": 'application/json',
          }),
          data: {
            EntityPlurals.getPluralForEntityName(entityName): _getMap(entities),
            "apiOperation": "DELETE",
          },
        );
      },
    );
  }

  @override
  FutureOr<Response> update(EntityModel entity) async {
    return executeFuture(
      future: () async {
        return await dio.post(
          updatePath,
          data: {
            entityName: [entity.toMap()],
            "apiOperation": "UPDATE",
          },
        );
      },
    );
  }

  List<Map<String, dynamic>> _getMap(List<EntityModel> entities) {
    return entities.map((e) => Mapper.toMap(e)).toList();
  }

  FutureOr<T> executeFuture<T>({
    required Future<T> Function() future,
  }) async {
    try {
      return await future();
    } on DioError catch (error) {
      const encoder = JsonEncoder.withIndent('  ');

      String? errorResponse;
      String? requestBody;

      try {
        errorResponse = encoder.convert(
          error.response?.data,
        );
      } catch (_) {
        errorResponse = 'Could not parse error';
      }

      try {
        requestBody = encoder.convert(error.requestOptions.data);
      } catch (_) {
        requestBody = 'Could not parse request body';
      }

      AppLogger.instance.debug(
        requestBody,
        title: runtimeType.toString(),
      );

      AppLogger.instance.error(
        message: '${error.error}\n$errorResponse',
        title: '${runtimeType.toString()} | DIO_ERROR',
      );

      rethrow;
    } catch (error) {
      AppLogger.instance.error(
        message: error.toString(),
        title: runtimeType.toString(),
      );

      rethrow;
    }
  }
}

abstract class LocalRepository<D extends EntityModel,
    R extends EntitySearchModel> extends DataRepository<D, R> {
  final LocalSqlDataStore sql;
  final OpLogManager<D> opLogManager;

  const LocalRepository(this.sql, this.opLogManager);

  @override
  @mustCallSuper
  FutureOr<void> create(
    D entity, {
    bool createOpLog = true,
    DataOperation dataOperation = DataOperation.create,
  }) async {
    if (createOpLog) await createOplogEntry(entity, dataOperation);
  }

  FutureOr<void> bulkCreate(List<D> entities) => throw UnimplementedError();

  @override
  @mustCallSuper
  FutureOr<void> update(D entity, {bool createOpLog = true}) async {
    if (createOpLog) await createOplogEntry(entity, DataOperation.update);
  }

  @override
  @mustCallSuper
  FutureOr<void> delete(D entity, {bool createOpLog = true}) async {
    if (createOpLog) await createOplogEntry(entity, DataOperation.delete);
  }

  FutureOr<void> createOplogEntry(D entity, DataOperation operation) async {
    final auditDetails = entity.auditDetails;
    if (auditDetails == null) {
      return;
    }
    final entry = OpLogEntry(
      entity,
      operation,
      createdAt: DateTime.now(),
      createdBy: auditDetails.createdBy,
      type: type,
    );

    return opLogManager.put(entry);
  }

  Future<List<OpLogEntry<D>>> getItemsToBeSyncedUp(String createdBy) async {
    return opLogManager.getPendingUpSync(type, createdBy: createdBy);
  }

  Future<List<OpLogEntry<D>>> getItemsToBeSyncedDown(String createdBy) async {
    return opLogManager.getPendingDownSync(type, createdBy: createdBy);
  }

  FutureOr<void> markSyncedUp({
    OpLogEntry<D>? entry,
    String? clientReferenceId,
    int? id,
  }) async {
    return opLogManager.markSyncUp(
      entry: entry,
      clientReferenceId: clientReferenceId,
      id: id,
    );
  }
}

class InvalidApiResponseException implements Exception {
  final String path;
  final Map<String, dynamic> data;
  final dynamic response;

  const InvalidApiResponseException({
    required this.path,
    required this.data,
    required this.response,
  });
}
