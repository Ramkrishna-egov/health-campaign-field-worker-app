// GENERATED using mason_cli
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/data_model.dart';
import '../../utils/environment_config.dart';
import '../../utils/typedefs.dart';
import '../../utils/utils.dart';

part 'beneficiary_registration.freezed.dart';

typedef BeneficiaryRegistrationEmitter = Emitter<BeneficiaryRegistrationState>;

class BeneficiaryRegistrationBloc
    extends Bloc<BeneficiaryRegistrationEvent, BeneficiaryRegistrationState> {
  final IndividualDataRepository individualRepository;

  final HouseholdDataRepository householdRepository;

  final HouseholdMemberDataRepository householdMemberRepository;

  final ProjectBeneficiaryDataRepository projectBeneficiaryRepository;

  // final TaskDataRepository taskDataRepository;

  BeneficiaryRegistrationBloc(
    super.initialState, {
    required this.individualRepository,
    required this.householdRepository,
    required this.householdMemberRepository,
    required this.projectBeneficiaryRepository,
    // required this.taskDataRepository,
  }) {
    on(_handleSaveAddress);
    on(_handleSaveHouseholdDetails);
    on(_handleSaveIndividualDetails);
    on(_handleCreate);
    on(_handleUpdateHousehold);
    on(_handleUpdateIndividual);
    on(_handleAddMember);
  }

  FutureOr<void> _handleSaveAddress(
    BeneficiaryRegistrationSaveAddressEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    state.maybeMap(
      orElse: () {
        throw const InvalidRegistrationStateException();
      },
      editHousehold: (value) {
        emit(value.copyWith(addressModel: event.model));
      },
      create: (value) {
        emit(value.copyWith(addressModel: event.model));
      },
    );
  }

  FutureOr<void> _handleSaveHouseholdDetails(
    BeneficiaryRegistrationSaveHouseholdDetailsEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    state.maybeMap(
      orElse: () {
        throw const InvalidRegistrationStateException();
      },
      editHousehold: (value) {
        emit(value.copyWith(
          householdModel: event.household,
        ));
      },
      create: (value) {
        emit(value.copyWith(
          householdModel: event.household,
          registrationDate: event.registrationDate,
        ));
      },
    );
  }

  FutureOr<void> _handleSaveIndividualDetails(
    BeneficiaryRegistrationSaveIndividualDetailsEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    state.maybeMap(
      orElse: () {
        throw const InvalidRegistrationStateException();
      },
      create: (value) {
        emit(value.copyWith(
          isHeadOfHousehold: event.isHeadOfHousehold,
          individualModel: event.model,
        ));
      },
      editIndividual: (value) {
        emit(value.copyWith(
          individualModel: event.model,
        ));
      },
    );
  }

  FutureOr<void> _handleCreate(
    BeneficiaryRegistrationCreateEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    await state.maybeMap(
      orElse: () {
        throw const InvalidRegistrationStateException();
      },
      create: (value) async {
        final individual = value.individualModel;
        final household = value.householdModel;
        final address = value.addressModel;
        final dateOfRegistration = value.registrationDate;

        if (individual == null) {
          throw const InvalidRegistrationStateException(
            'Individual cannot be null',
          );
        } else if (household == null) {
          throw const InvalidRegistrationStateException(
            'Household cannot be null',
          );
        } else if (address == null) {
          throw const InvalidRegistrationStateException(
            'Address cannot be null',
          );
        } else if (dateOfRegistration == null) {
          throw const InvalidRegistrationStateException(
            'Registration date cannot be null',
          );
        }

        final createdAt = DateTime.now().millisecondsSinceEpoch;

        emit(value.copyWith(loading: true));

        try {
          final code = event.boundary.code;
          final name = event.boundary.name;

          final locality = code == null || name == null
              ? null
              : LocalityModel(code: code, name: name);

          await householdRepository.create(
            household.copyWith(
              address: address.copyWith(
                relatedClientReferenceId: household.clientReferenceId,
                auditDetails: individual.auditDetails,
                locality: locality,
              ),
            ),
          );

          await individualRepository.create(
            individual.copyWith(
              address: [
                address.copyWith(
                  relatedClientReferenceId: individual.clientReferenceId,
                  auditDetails: individual.auditDetails,
                  locality: locality,
                ),
              ],
            ),
          );

          await projectBeneficiaryRepository.create(
            ProjectBeneficiaryModel(
              rowVersion: 1,
              tenantId: envConfig.variables.tenantId,
              clientReferenceId: IdGen.i.identifier,
              dateOfRegistration: dateOfRegistration.millisecondsSinceEpoch,
              projectId: event.projectId,
              beneficiaryClientReferenceId: household.clientReferenceId,
              auditDetails: AuditDetails(
                createdBy: event.userUuid,
                createdTime: createdAt,
              ),
            ),
          );

          await householdMemberRepository.create(
            HouseholdMemberModel(
              householdClientReferenceId: household.clientReferenceId,
              individualClientReferenceId: individual.clientReferenceId,
              isHeadOfHousehold: value.isHeadOfHousehold,
              tenantId: envConfig.variables.tenantId,
              rowVersion: 1,
              clientReferenceId: IdGen.i.identifier,
              auditDetails: AuditDetails(
                createdBy: event.userUuid,
                createdTime: createdAt,
              ),
            ),
          );
        } catch (error) {
          rethrow;
        } finally {
          emit(value.copyWith(loading: false));
          emit(
            BeneficiaryRegistrationPersistedState(
              navigateToRoot: false,
              householdModel: household,
            ),
          );
        }
      },
    );
  }

  FutureOr<void> _handleUpdateHousehold(
    BeneficiaryRegistrationUpdateHouseholdDetailsEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    await state.maybeMap(
      orElse: () {
        throw const InvalidRegistrationStateException();
      },
      editHousehold: (value) async {
        emit(value.copyWith(loading: true));
        try {
          await householdRepository.update(
            value.householdModel.copyWith(
              memberCount: event.household.memberCount,
              address: value.addressModel.copyWith(
                relatedClientReferenceId:
                    value.householdModel.clientReferenceId,
              ),
            ),
          );
          for (var element in value.individualModel) {
            await individualRepository.update(
              element.copyWith(
                address: [
                  value.addressModel.copyWith(
                    relatedClientReferenceId: element.clientReferenceId,
                  ),
                ],
              ),
            );
          }
        } catch (error) {
          rethrow;
        } finally {
          emit(value.copyWith(loading: false));
          emit(
            BeneficiaryRegistrationPersistedState(
              householdModel: value.householdModel,
            ),
          );
        }
      },
    );
  }

  FutureOr<void> _handleUpdateIndividual(
    BeneficiaryRegistrationUpdateIndividualDetailsEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    await state.maybeMap(
      orElse: () {
        throw const InvalidRegistrationStateException();
      },
      editIndividual: (value) async {
        emit(value.copyWith(loading: true));
        try {
          final individual = event.model.copyWith(
            address: [
              event.addressModel.copyWith(
                relatedClientReferenceId: event.model.clientReferenceId,
              ),
            ],
          );
          await individualRepository.update(individual);
        } catch (error) {
          rethrow;
        } finally {
          emit(value.copyWith(loading: false));
          emit(BeneficiaryRegistrationPersistedState(
            householdModel: value.householdModel,
          ));
        }
      },
    );
  }

  FutureOr<void> _handleAddMember(
    BeneficiaryRegistrationAddMemberEvent event,
    BeneficiaryRegistrationEmitter emit,
  ) async {
    await state.maybeMap(
      orElse: () {
        throw const InvalidRegistrationStateException();
      },
      addMember: (value) async {
        emit(value.copyWith(loading: true));
        try {
          await individualRepository.create(
            event.individualModel.copyWith(
              address: [
                value.addressModel.copyWith(
                  relatedClientReferenceId:
                      event.individualModel.clientReferenceId,
                ),
              ],
            ),
          );

          final createdAt = DateTime.now().millisecondsSinceEpoch;

          await householdMemberRepository.create(
            HouseholdMemberModel(
              householdClientReferenceId:
                  value.householdModel.clientReferenceId,
              individualClientReferenceId:
                  event.individualModel.clientReferenceId,
              isHeadOfHousehold: false,
              tenantId: envConfig.variables.tenantId,
              rowVersion: 1,
              clientReferenceId: IdGen.i.identifier,
              auditDetails: AuditDetails(
                createdBy: event.userUuid,
                createdTime: createdAt,
              ),
            ),
          );
        } catch (error) {
          rethrow;
        } finally {
          emit(value.copyWith(loading: false));
          emit(BeneficiaryRegistrationPersistedState(
            householdModel: value.householdModel,
          ));
        }
      },
    );
  }
}

@freezed
class BeneficiaryRegistrationEvent with _$BeneficiaryRegistrationEvent {
  const factory BeneficiaryRegistrationEvent.saveAddress(
    AddressModel model,
  ) = BeneficiaryRegistrationSaveAddressEvent;

  const factory BeneficiaryRegistrationEvent.saveHouseholdDetails({
    required HouseholdModel household,
    required DateTime registrationDate,
  }) = BeneficiaryRegistrationSaveHouseholdDetailsEvent;

  const factory BeneficiaryRegistrationEvent.saveIndividualDetails({
    required IndividualModel model,
    @Default(false) bool isHeadOfHousehold,
  }) = BeneficiaryRegistrationSaveIndividualDetailsEvent;

  const factory BeneficiaryRegistrationEvent.addMember({
    required HouseholdModel householdModel,
    required IndividualModel individualModel,
    required AddressModel addressModel,
    required String userUuid,
  }) = BeneficiaryRegistrationAddMemberEvent;

  const factory BeneficiaryRegistrationEvent.updateHouseholdDetails({
    required HouseholdModel household,
    AddressModel? addressModel,
  }) = BeneficiaryRegistrationUpdateHouseholdDetailsEvent;

  const factory BeneficiaryRegistrationEvent.updateIndividualDetails({
    required IndividualModel model,
    required AddressModel addressModel,
  }) = BeneficiaryRegistrationUpdateIndividualDetailsEvent;

  const factory BeneficiaryRegistrationEvent.create({
    required String userUuid,
    required String projectId,
    required BoundaryModel boundary,
  }) = BeneficiaryRegistrationCreateEvent;
}

@freezed
class BeneficiaryRegistrationState with _$BeneficiaryRegistrationState {
  const factory BeneficiaryRegistrationState.create({
    AddressModel? addressModel,
    HouseholdModel? householdModel,
    IndividualModel? individualModel,
    DateTime? registrationDate,
    String? searchQuery,
    @Default(false) bool loading,
    @Default(false) bool isHeadOfHousehold,
  }) = BeneficiaryRegistrationCreateState;

  const factory BeneficiaryRegistrationState.editHousehold({
    required AddressModel addressModel,
    required HouseholdModel householdModel,
    required List<IndividualModel> individualModel,
    required DateTime registrationDate,
    @Default(false) bool loading,
  }) = BeneficiaryRegistrationEditHouseholdState;

  const factory BeneficiaryRegistrationState.editIndividual({
    required HouseholdModel householdModel,
    required IndividualModel individualModel,
    required AddressModel addressModel,
    @Default(false) bool loading,
  }) = BeneficiaryRegistrationEditIndividualState;

  const factory BeneficiaryRegistrationState.addMember({
    required AddressModel addressModel,
    required HouseholdModel householdModel,
    @Default(false) bool loading,
  }) = BeneficiaryRegistrationAddMemberState;

  const factory BeneficiaryRegistrationState.persisted({
    @Default(true) bool navigateToRoot,
    required HouseholdModel householdModel,
  }) = BeneficiaryRegistrationPersistedState;
}

class InvalidRegistrationStateException implements Exception {
  final String? message;

  const InvalidRegistrationStateException([this.message]);
}
