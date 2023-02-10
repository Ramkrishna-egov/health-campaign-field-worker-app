import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_repository.dart';
import '../../models/data_model.dart';
import '../../utils/utils.dart';

class BeneficiaryRegistrationCubit extends Cubit<BeneficiaryRegistrationState> {
  final DataRepository<IndividualModel, IndividualSearchModel>
      individualRepository;

  final DataRepository<HouseholdModel, HouseholdSearchModel>
      householdRepository;

  final DataRepository<HouseholdMemberModel, HouseholdMemberSearchModel>
      householdMemberSearchRepository;

  late AddressModel _addressModel;
  late IndividualModel _individualModel;
  late HouseholdModel _householdModel;

  late bool _isHeadOFHousehold;

  BeneficiaryRegistrationCubit(
    super.initialState, {
    required this.individualRepository,
    required this.householdRepository,
    required this.householdMemberSearchRepository,
  });

  void updateHouseholdLocation({required AddressModel addressModel}) {
    _addressModel = addressModel;
  }

  AddressModel get addressModel => _addressModel;

  void updateHouseholdModel({
    required HouseholdModel householdModel,
  }) {
    _householdModel = householdModel;
  }

  void updateIndividualDetails({
    required IndividualModel individualModel,
    bool isHeadOFHousehold = false,
  }) {
    _individualModel = individualModel;
    _isHeadOFHousehold = isHeadOFHousehold;
  }

  submitDetails() async {
    emit(BeneficiaryRegistrationLoadingState());

    /// make API call
    await individualRepository.create(_individualModel);
    await householdRepository.create(_householdModel);
    await householdMemberSearchRepository.create(
      HouseholdMemberModel(
        householdClientReferenceId: _householdModel.clientReferenceId,
        individualClientReferenceId: _individualModel.clientReferenceId,
        isHeadOfHousehold: _isHeadOFHousehold,
        // TODO(naveen): Please review the value for Tenant ID
        tenantId: '',
        rowVersion: 1,
        clientReferenceId: IdGen.i.identifier,
      ),
    );

    /// use if else to determine which state to emit
    emit(BeneficiaryRegistrationSuccessState());
    emit(BeneficiaryRegistrationFailureState());
  }

  retrieveDetails() {
    emit(BeneficiaryRegistrationLoadingState());

    /// make API call

    /// Assign data to [_householdLocation], [_householdDetails], and [_individualDetails]
    /// use if else to determine which state to emit
    emit(BeneficiaryRegistrationSuccessState());
    emit(BeneficiaryRegistrationFailureState());
  }
}

class BeneficiaryRegistrationState {}

class BeneficiaryRegistrationInitialState
    extends BeneficiaryRegistrationState {}

class BeneficiaryRegistrationLoadingState
    extends BeneficiaryRegistrationState {}

class BeneficiaryRegistrationSuccessState
    extends BeneficiaryRegistrationState {}

class BeneficiaryRegistrationFailureState
    extends BeneficiaryRegistrationState {}