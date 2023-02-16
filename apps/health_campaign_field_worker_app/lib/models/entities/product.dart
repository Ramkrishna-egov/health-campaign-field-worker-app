// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data_model.dart';
import '../../data/local_store/sql_store/sql_store.dart';

@MappableClass(ignoreNull: true)
class ProductSearchModel extends EntitySearchModel {
  final String? id;
  final String? type;
  final String? name;
  final String? manufacturer;
  final String? clientReferenceId;
  final String? tenantId;
  
  ProductSearchModel({
    this.id,
    this.type,
    this.name,
    this.manufacturer,
    this.clientReferenceId,
    this.tenantId,
    super.boundaryCode,
  }):  super();
}

@MappableClass(ignoreNull: true)
class ProductModel extends EntityModel implements ProductSearchModel {
  
  @override
  final String? id;
  
  @override
  final String? type;
  
  @override
  final String? name;
  
  @override
  final String? manufacturer;
  
  @override
  final String clientReferenceId;
  
  @override
  final String tenantId;
  final int rowVersion;
  

  ProductModel({
    this.id,
    this.type,
    this.name,
    this.manufacturer,
    required this.clientReferenceId,
    required this.tenantId,
    required this.rowVersion,
    super.auditDetails,
  }):  super();

  ProductCompanion get companion {
    return ProductCompanion(
      id: Value(id),
      type: Value(type),
      name: Value(name),
      manufacturer: Value(manufacturer),
      clientReferenceId: Value(clientReferenceId),
      tenantId: Value(tenantId),
      rowVersion: Value(rowVersion),
      );
  }
}