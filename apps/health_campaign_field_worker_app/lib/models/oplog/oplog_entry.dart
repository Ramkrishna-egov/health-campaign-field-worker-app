import 'package:dart_mappable/dart_mappable.dart';

import '../../data/local_store/no_sql/schema/oplog.dart';
import '../data_model.dart';

@MappableClass()
class OpLogEntry<T extends EntityModel> {
  final int? id;
  final T entity;
  final DataModelType type;
  final DataOperation operation;
  final bool syncedUp;
  final bool syncedDown;
  final String createdBy;
  final DateTime createdAt;
  final DateTime? syncedUpOn;
  final DateTime? syncedDownOn;
  final String? serverGeneratedId;
  final String? clientReferenceId;

  const OpLogEntry(
    this.entity,
    this.operation, {
    this.id,
    required this.createdAt,
    required this.createdBy,
    required this.type,
    this.syncedUp = false,
    this.syncedDown = false,
    this.syncedUpOn,
    this.syncedDownOn,
    this.serverGeneratedId,
    this.clientReferenceId,
  });

  static OpLogEntry<T> fromOpLog<T extends EntityModel>(OpLog e) {
    return OpLogEntry<T>(
      e.getEntity<T>(),
      e.operation,
      createdBy: e.createdBy,
      createdAt: e.createdAt,
      type: e.entityType,
      serverGeneratedId: e.serverGeneratedId,
      id: e.id,
      clientReferenceId: e.clientReferenceId,
      syncedDown: e.syncedDown,
      syncedDownOn: e.syncedDownOn,
      syncedUp: e.syncedUp,
      syncedUpOn: e.syncedUpOn,
    );
  }

  OpLog get oplog {
    OpLog oplog = OpLog()
      ..entityString = entity.toJson()
      ..entityType = type
      ..operation = operation
      ..serverGeneratedId = serverGeneratedId
      ..clientReferenceId = clientReferenceId
      ..syncedUpOn = syncedUpOn
      ..syncedDownOn = syncedDownOn
      ..createdBy = createdBy
      ..createdAt = createdAt
      ..syncedUp = syncedUp
      ..syncedDown = syncedDown;

    if (id != null) {
      oplog.id = id!;
    }

    return oplog;
  }
}

@MappableEnum()
enum DataOperation {
  create,
  search,
  update,
  delete,
  singleCreate,
}

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum ApiOperation {
  login,
  create,
  search,
  update,
  delete,
  bulkCreate,
  bulkUpdate,
  bulkDelete,
  singleCreate
}
