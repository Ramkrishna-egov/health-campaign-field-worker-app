// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data_model.dart';
import '../../data/local_store/sql_store/sql_store.dart';

@MappableClass(ignoreNull: true)
class SideEffectSearchModel extends EntitySearchModel {
  final String? id;
  final List<String>? taskClientReferenceId;
  final String? projectId;
  final int? reAttempts;
  final List<String>? symptoms;
  final List<String>? clientReferenceId;
  final String? tenantId;
  
  SideEffectSearchModel({
    this.id,
    this.taskClientReferenceId,
    this.projectId,
    this.reAttempts,
    this.symptoms,
    this.clientReferenceId,
    this.tenantId,
    super.boundaryCode,
    super.isDeleted,
  }):  super();

  @MappableConstructor()
  SideEffectSearchModel.ignoreDeleted({
    this.id,
    this.taskClientReferenceId,
    this.projectId,
    this.reAttempts,
    this.symptoms,
    this.clientReferenceId,
    this.tenantId,
    super.boundaryCode,
  }):  super(isDeleted: false);
}

@MappableClass(ignoreNull: true)
class SideEffectModel extends EntityModel {

  static const schemaName = 'SideEffect';

  final String? id;
  final String? projectId;
  final String? taskClientReferenceId;
  final int? reAttempts;
  final List<String>? symptoms;
  final String clientReferenceId;
  final String? tenantId;
  final int? rowVersion;
  final SideEffectAdditionalFields? additionalFields;

  SideEffectModel({
    this.additionalFields,
    this.id,
    this.projectId,
    this.taskClientReferenceId,
    this.reAttempts,
    this.symptoms,
    required this.clientReferenceId,
    this.tenantId,
    this.rowVersion,
    super.auditDetails,super.clientAuditDetails,
    super.isDeleted = false,
  }): super();

  SideEffectCompanion get companion {
    return SideEffectCompanion(
      auditCreatedBy: Value(auditDetails?.createdBy),
      auditCreatedTime: Value(auditDetails?.createdTime),
      auditModifiedBy: Value(auditDetails?.lastModifiedBy),
      clientCreatedTime: Value(clientAuditDetails?.createdTime),
      clientModifiedTime: Value(clientAuditDetails?.lastModifiedTime),
      clientCreatedBy: Value(clientAuditDetails?.createdBy),
      clientModifiedBy: Value(clientAuditDetails?.lastModifiedBy),
      auditModifiedTime: Value(auditDetails?.lastModifiedTime),
      additionalFields: Value(additionalFields?.toJson()),
      isDeleted: Value(isDeleted),
      id: Value(id),
      projectId: Value(projectId),
      taskClientReferenceId: Value(taskClientReferenceId),
      reAttempts: Value(reAttempts),
      symptoms: Value(symptoms?.toString()),
      clientReferenceId: Value(clientReferenceId),
      tenantId: Value(tenantId),
      rowVersion: Value(rowVersion),
      );
  }
}

@MappableClass(ignoreNull: true)
class SideEffectAdditionalFields extends AdditionalFields {
  SideEffectAdditionalFields({
    super.schema = 'SideEffect',
    required super.version,
    super.fields,
  });
}
