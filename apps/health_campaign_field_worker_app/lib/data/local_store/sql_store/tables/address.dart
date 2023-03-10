// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';

import '../../../../models/address_type.dart';
import 'boundary.dart';

class Address extends Table {
  TextColumn get id => text().nullable()();
  TextColumn get tenantId => text().nullable()();
  TextColumn get doorNo => text().nullable()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  RealColumn get locationAccuracy => real().nullable()();
  TextColumn get addressLine1 => text().nullable()();
  TextColumn get addressLine2 => text().nullable()();
  TextColumn get landmark => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get pincode => text().nullable()();
  TextColumn get buildingName => text().nullable()();
  TextColumn get street => text().nullable()();
  TextColumn get clientReferenceId => text()();
  IntColumn get type => intEnum<AddressType>().nullable()();
  
  TextColumn get locality => text().nullable().references(Boundary, #clientReferenceId)();

  @override
  Set<Column> get primaryKey => { clientReferenceId,  };
}