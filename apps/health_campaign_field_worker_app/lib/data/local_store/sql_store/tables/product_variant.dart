// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';


class ProductVariant extends Table {
  TextColumn get id => text()();
  TextColumn get productId => text().nullable()();
  TextColumn get sku => text().nullable()();
  TextColumn get variation => text().nullable()();
  TextColumn get auditCreatedBy => text().nullable()();
  IntColumn get auditCreatedTime => integer().nullable()();
  TextColumn get auditModifiedBy => text().nullable()();
  IntColumn get auditModifiedTime => integer().nullable()();
  TextColumn get tenantId => text().nullable()();
  BoolColumn get isDeleted => boolean().nullable()();
  IntColumn get rowVersion => integer().nullable()();
  
  TextColumn get additionalFields => text().nullable()();

  @override
  Set<Column> get primaryKey => { id, auditCreatedBy,  };
}