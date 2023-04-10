import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../blocs/complaints_registration/complaints_registration.dart';
import '../../models/data_model.dart';
import '../../router/app_router.dart';
import '../../utils/environment_config.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../../utils/utils.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';

class ComplaintsLocationPage extends LocalizedStatefulWidget {
  const ComplaintsLocationPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<ComplaintsLocationPage> createState() => _ComplaintsLocationPageState();
}

class _ComplaintsLocationPageState
    extends LocalizedState<ComplaintsLocationPage> {
  static const _addressLine1Key = 'addressLine1';
  static const _addressLine2Key = 'addressLine2';
  static const _landmarkKey = 'landmark';
  static const _postalCodeKey = 'postalCode';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<ComplaintsRegistrationBloc>();
    final router = context.router;

    return Scaffold(
      body: ReactiveFormBuilder(
        form: () => buildForm(bloc.state),
        builder: (_, form, __) => BlocListener<LocationBloc, LocationState>(
          listener: (context, locationState) {},
          child: BlocBuilder<ComplaintsRegistrationBloc,
              ComplaintsRegistrationState>(
            builder: (context, state) {
              return ScrollableContent(
                header: Column(
                  children: const [
                    BackNavigationHelpHeaderWidget(),
                  ],
                ),
                footer: SizedBox(
                  height: 85,
                  child: DigitCard(
                    margin: const EdgeInsets.only(left: 0, right: 0, top: 10),
                    child: DigitElevatedButton(
                      onPressed: () {
                        form.markAllAsTouched();

                        if (!form.valid) return;

                        final addressLine1 =
                            form.control(_addressLine1Key).value as String?;
                        final addressLine2 =
                            form.control(_addressLine2Key).value as String?;
                        final landmark =
                            form.control(_landmarkKey).value as String?;
                        final postalCode =
                            form.control(_postalCodeKey).value as String?;

                        state.maybeWhen(
                          orElse: () {
                            return;
                          },
                          saveComplaint: (
                            complaintType,
                            addressModel,
                            complaintsDetailsModel,
                          ) {
                            bloc.add(ComplaintsRegistrationEvent.saveAddress(
                              addressModel: AddressModel(
                                addressLine1: addressLine1,
                                addressLine2: addressLine2,
                                landmark: landmark,
                                pincode: postalCode,
                              ),
                            ));
                          },
                        );

                        router.push(ComplaintsDetailsRoute());
                      },
                      child: Center(
                        child: Text(
                          localizations.translate(i18.complaints.actionLabel),
                        ),
                      ),
                    ),
                  ),
                ),
                children: [
                  DigitCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          localizations.translate(
                            i18.complaints.complaintsLocationLabel,
                          ),
                          style: theme.textTheme.displayMedium,
                        ),
                        Column(children: [
                          DigitTextFormField(
                            formControlName: _addressLine1Key,
                            label: localizations.translate(
                              i18.householdLocation
                                  .householdAddressLine1LabelText,
                            ),
                            maxLength: 64,
                          ),
                          DigitTextFormField(
                            formControlName: _addressLine2Key,
                            label: localizations.translate(
                              i18.householdLocation
                                  .householdAddressLine2LabelText,
                            ),
                            maxLength: 64,
                          ),
                          DigitTextFormField(
                            formControlName: _landmarkKey,
                            label: localizations.translate(
                              i18.householdLocation.landmarkFormLabel,
                            ),
                            maxLength: 64,
                          ),
                          DigitTextFormField(
                            keyboardType: TextInputType.text,
                            formControlName: _postalCodeKey,
                            label: localizations.translate(
                              i18.householdLocation.postalCodeFormLabel,
                            ),
                            maxLength: 64,
                          ),
                        ]),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  FormGroup buildForm(ComplaintsRegistrationState state) {
    final addressModel = state.addressModel;

    return fb.group(<String, Object>{
      _addressLine1Key:
          FormControl<String>(value: addressModel?.addressLine1, validators: [
        CustomValidator.requiredMin,
      ]),
      _addressLine2Key: FormControl<String>(
        value: addressModel?.addressLine2,
        validators: [CustomValidator.requiredMin],
      ),
      _landmarkKey:
          FormControl<String>(value: addressModel?.landmark, validators: [
        CustomValidator.requiredMin,
      ]),
      _postalCodeKey:
          FormControl<String>(value: addressModel?.pincode, validators: [
        CustomValidator.requiredMin,
      ]),
    });
  }
}
