// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';


class Document extends Table {
  TextColumn get id => text().nullable()();
  TextColumn get tenantId => text().nullable()();
  TextColumn get documentType => text().nullable()();
  TextColumn get fileStoreId => text().nullable()();
  TextColumn get documentUid => text().nullable()();
  TextColumn get clientReferenceId => text()();
  

  @override
  Set<Column> get primaryKey => { clientReferenceId,  };
}