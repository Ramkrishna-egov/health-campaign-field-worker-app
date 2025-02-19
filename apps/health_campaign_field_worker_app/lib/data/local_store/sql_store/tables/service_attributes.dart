// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';


class ServiceAttributes extends Table {
  TextColumn get attributeCode => text().nullable()();
  TextColumn get value => text().nullable()();
  TextColumn get dataType => text().nullable()();
  TextColumn get referenceId => text().nullable()();
  TextColumn get additionalDetails => text().nullable()();
  TextColumn get auditCreatedBy => text().nullable()();
  IntColumn get auditCreatedTime => integer().nullable()();
  TextColumn get auditModifiedBy => text().nullable()();
  IntColumn get auditModifiedTime => integer().nullable()();
  TextColumn get clientReferenceId => text()();
  TextColumn get tenantId => text().nullable()();
  BoolColumn get isDeleted => boolean().nullable()();
  IntColumn get rowVersion => integer().nullable()();
  
  TextColumn get additionalFields => text().nullable()();

  @override
  Set<Column> get primaryKey => { auditCreatedBy, clientReferenceId,  };
}