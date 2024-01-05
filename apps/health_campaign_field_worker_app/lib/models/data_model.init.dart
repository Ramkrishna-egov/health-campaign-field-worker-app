// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

import 'data_model.dart' as p0;
import 'entities/additional_fields_type.dart' as p1;
import 'entities/address.dart' as p2;
import 'entities/address_type.dart' as p3;
import 'entities/attributes.dart' as p4;
import 'entities/beneficiary_type.dart' as p5;
import 'entities/blood_group.dart' as p6;
import 'entities/boundary.dart' as p7;
import 'entities/deliver_strategy_type.dart' as p8;
import 'entities/document.dart' as p9;
import 'entities/downsync.dart' as p10;
import 'entities/facility.dart' as p11;
import 'entities/gender.dart' as p12;
import 'entities/household.dart' as p13;
import 'entities/household_member.dart' as p14;
import 'entities/identifier.dart' as p15;
import 'entities/individual.dart' as p16;
import 'entities/locality.dart' as p17;
import 'entities/name.dart' as p18;
import 'entities/product.dart' as p19;
import 'entities/product_variant.dart' as p20;
import 'entities/project.dart' as p21;
import 'entities/project_beneficiary.dart' as p22;
import 'entities/project_facility.dart' as p23;
import 'entities/project_product_variant.dart' as p24;
import 'entities/project_resource.dart' as p25;
import 'entities/project_staff.dart' as p26;
import 'entities/project_type.dart' as p27;
import 'entities/referral.dart' as p28;
import 'entities/roles.dart' as p29;
import 'entities/roles_type.dart' as p30;
import 'entities/scanner_type.dart' as p31;
import 'entities/service.dart' as p32;
import 'entities/service_attributes.dart' as p33;
import 'entities/service_definition.dart' as p34;
import 'entities/side_effect.dart' as p35;
import 'entities/status.dart' as p36;
import 'entities/stock.dart' as p37;
import 'entities/stock_reconciliation.dart' as p38;
import 'entities/target.dart' as p39;
import 'entities/task.dart' as p40;
import 'entities/task_resource.dart' as p41;
import 'entities/transaction_reason.dart' as p42;
import 'entities/transaction_type.dart' as p43;
import 'entities/user.dart' as p44;
import 'oplog/oplog_entry.dart' as p45;
import 'pgr_complaints/pgr_address.dart' as p46;
import 'pgr_complaints/pgr_complaints.dart' as p47;
import 'pgr_complaints/pgr_complaints_response.dart' as p48;

void initializeMappers() {
  p0.EntityModelMapper.ensureInitialized();
  p0.EntitySearchModelMapper.ensureInitialized();
  p0.AdditionalFieldsMapper.ensureInitialized();
  p0.AdditionalFieldMapper.ensureInitialized();
  p0.ClientAuditDetailsMapper.ensureInitialized();
  p0.AuditDetailsMapper.ensureInitialized();
  p1.AdditionalFieldsTypeMapper.ensureInitialized();
  p2.AddressSearchModelMapper.ensureInitialized();
  p2.AddressModelMapper.ensureInitialized();
  p2.AddressAdditionalFieldsMapper.ensureInitialized();
  p3.AddressTypeMapper.ensureInitialized();
  p4.AttributesSearchModelMapper.ensureInitialized();
  p4.AttributesModelMapper.ensureInitialized();
  p4.AttributesAdditionalFieldsMapper.ensureInitialized();
  p5.BeneficiaryTypeMapper.ensureInitialized();
  p6.BloodGroupMapper.ensureInitialized();
  p7.BoundarySearchModelMapper.ensureInitialized();
  p7.BoundaryModelMapper.ensureInitialized();
  p8.DeliverStrategyTypeMapper.ensureInitialized();
  p9.DocumentSearchModelMapper.ensureInitialized();
  p9.DocumentModelMapper.ensureInitialized();
  p9.DocumentAdditionalFieldsMapper.ensureInitialized();
  p10.DownsyncSearchModelMapper.ensureInitialized();
  p10.DownsyncModelMapper.ensureInitialized();
  p10.DownsyncAdditionalFieldsMapper.ensureInitialized();
  p11.FacilitySearchModelMapper.ensureInitialized();
  p11.FacilityModelMapper.ensureInitialized();
  p11.FacilityAdditionalFieldsMapper.ensureInitialized();
  p12.GenderMapper.ensureInitialized();
  p13.HouseholdSearchModelMapper.ensureInitialized();
  p13.HouseholdModelMapper.ensureInitialized();
  p13.HouseholdAdditionalFieldsMapper.ensureInitialized();
  p14.HouseholdMemberSearchModelMapper.ensureInitialized();
  p14.HouseholdMemberModelMapper.ensureInitialized();
  p14.HouseholdMemberAdditionalFieldsMapper.ensureInitialized();
  p15.IdentifierSearchModelMapper.ensureInitialized();
  p15.IdentifierModelMapper.ensureInitialized();
  p15.IdentifierAdditionalFieldsMapper.ensureInitialized();
  p16.IndividualSearchModelMapper.ensureInitialized();
  p16.IndividualModelMapper.ensureInitialized();
  p16.IndividualAdditionalFieldsMapper.ensureInitialized();
  p17.LocalitySearchModelMapper.ensureInitialized();
  p17.LocalityModelMapper.ensureInitialized();
  p17.LocalityAdditionalFieldsMapper.ensureInitialized();
  p18.NameSearchModelMapper.ensureInitialized();
  p18.NameModelMapper.ensureInitialized();
  p18.NameAdditionalFieldsMapper.ensureInitialized();
  p19.ProductSearchModelMapper.ensureInitialized();
  p19.ProductModelMapper.ensureInitialized();
  p19.ProductAdditionalFieldsMapper.ensureInitialized();
  p20.ProductVariantSearchModelMapper.ensureInitialized();
  p20.ProductVariantModelMapper.ensureInitialized();
  p20.ProductVariantAdditionalFieldsMapper.ensureInitialized();
  p21.ProjectSearchModelMapper.ensureInitialized();
  p21.ProjectModelMapper.ensureInitialized();
  p21.ProjectAdditionalFieldsMapper.ensureInitialized();
  p22.ProjectBeneficiarySearchModelMapper.ensureInitialized();
  p22.ProjectBeneficiaryModelMapper.ensureInitialized();
  p22.ProjectBeneficiaryAdditionalFieldsMapper.ensureInitialized();
  p23.ProjectFacilitySearchModelMapper.ensureInitialized();
  p23.ProjectFacilityModelMapper.ensureInitialized();
  p23.ProjectFacilityAdditionalFieldsMapper.ensureInitialized();
  p24.ProjectProductVariantSearchModelMapper.ensureInitialized();
  p24.ProjectProductVariantModelMapper.ensureInitialized();
  p24.ProjectProductVariantAdditionalFieldsMapper.ensureInitialized();
  p25.ProjectResourceSearchModelMapper.ensureInitialized();
  p25.ProjectResourceModelMapper.ensureInitialized();
  p25.ProjectResourceAdditionalFieldsMapper.ensureInitialized();
  p26.ProjectStaffSearchModelMapper.ensureInitialized();
  p26.ProjectStaffModelMapper.ensureInitialized();
  p26.ProjectStaffAdditionalFieldsMapper.ensureInitialized();
  p27.ProjectTypeSearchModelMapper.ensureInitialized();
  p27.ProjectTypeModelMapper.ensureInitialized();
  p27.ProjectTypeAdditionalFieldsMapper.ensureInitialized();
  p28.ReferralSearchModelMapper.ensureInitialized();
  p28.ReferralModelMapper.ensureInitialized();
  p28.ReferralAdditionalFieldsMapper.ensureInitialized();
  p29.RolesMapper.ensureInitialized();
  p30.RolesTypeMapper.ensureInitialized();
  p31.ScannerTypeMapper.ensureInitialized();
  p32.ServiceSearchModelMapper.ensureInitialized();
  p32.ServiceModelMapper.ensureInitialized();
  p32.ServiceAdditionalFieldsMapper.ensureInitialized();
  p33.ServiceAttributesSearchModelMapper.ensureInitialized();
  p33.ServiceAttributesModelMapper.ensureInitialized();
  p33.ServiceAttributesAdditionalFieldsMapper.ensureInitialized();
  p34.ServiceDefinitionSearchModelMapper.ensureInitialized();
  p34.ServiceDefinitionModelMapper.ensureInitialized();
  p34.ServiceDefinitionAdditionalFieldsMapper.ensureInitialized();
  p35.SideEffectSearchModelMapper.ensureInitialized();
  p35.SideEffectModelMapper.ensureInitialized();
  p35.SideEffectAdditionalFieldsMapper.ensureInitialized();
  p36.StatusMapper.ensureInitialized();
  p37.StockSearchModelMapper.ensureInitialized();
  p37.StockModelMapper.ensureInitialized();
  p37.StockAdditionalFieldsMapper.ensureInitialized();
  p38.StockReconciliationSearchModelMapper.ensureInitialized();
  p38.StockReconciliationModelMapper.ensureInitialized();
  p38.StockReconciliationAdditionalFieldsMapper.ensureInitialized();
  p39.TargetSearchModelMapper.ensureInitialized();
  p39.TargetModelMapper.ensureInitialized();
  p39.TargetAdditionalFieldsMapper.ensureInitialized();
  p40.TaskSearchModelMapper.ensureInitialized();
  p40.TaskModelMapper.ensureInitialized();
  p40.TaskAdditionalFieldsMapper.ensureInitialized();
  p41.TaskResourceSearchModelMapper.ensureInitialized();
  p41.TaskResourceModelMapper.ensureInitialized();
  p41.TaskResourceAdditionalFieldsMapper.ensureInitialized();
  p42.TransactionReasonMapper.ensureInitialized();
  p43.TransactionTypeMapper.ensureInitialized();
  p44.UserSearchModelMapper.ensureInitialized();
  p44.UserModelMapper.ensureInitialized();
  p44.UserAdditionalFieldsMapper.ensureInitialized();
  p45.OpLogEntryMapper.ensureInitialized();
  p45.AdditionalIdMapper.ensureInitialized();
  p45.DataOperationMapper.ensureInitialized();
  p45.ApiOperationMapper.ensureInitialized();
  p46.PgrAddressModelMapper.ensureInitialized();
  p46.GeoLocationMapper.ensureInitialized();
  p47.PgrComplaintModelMapper.ensureInitialized();
  p47.PgrComplainantModelMapper.ensureInitialized();
  p47.PgrRolesModelMapper.ensureInitialized();
  p47.PgrServiceSearchModelMapper.ensureInitialized();
  p47.PgrServiceModelMapper.ensureInitialized();
  p47.PgrWorkflowModelMapper.ensureInitialized();
  p47.PgrFiltersMapper.ensureInitialized();
  p47.PgrSearchKeysMapper.ensureInitialized();
  p47.PgrAdditionalDetailsMapper.ensureInitialized();
  p47.PgrServiceApplicationStatusMapper.ensureInitialized();
  p48.PgrServiceCreateResponseModelMapper.ensureInitialized();
  p48.PgrComplaintResponseModelMapper.ensureInitialized();
  p48.PgrComplainantResponseModelMapper.ensureInitialized();
  p48.PgrServiceResponseModelMapper.ensureInitialized();
}
