import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../blocs/facility/facility.dart';
import '../../../blocs/project/project.dart';
import '../../../blocs/record_stock/record_stock.dart';
import '../../../models/data_model.dart';
import '../../../router/app_router.dart';
import '../../../utils/i18_key_constants.dart' as i18;
import '../../../utils/utils.dart';
import '../../../widgets/header/back_navigation_help_header.dart';
import '../../../widgets/inventory/no_facilities_assigned_dialog.dart';
import '../../../widgets/localized.dart';
import '../facility_selection.dart';

class WarehouseDetailsPage extends LocalizedStatefulWidget {
  const WarehouseDetailsPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<WarehouseDetailsPage> createState() => _WarehouseDetailsPageState();
}

class _WarehouseDetailsPageState extends LocalizedState<WarehouseDetailsPage> {
  static const _dateOfEntryKey = 'dateOfReceipt';
  static const _administrativeUnitKey = 'administrativeUnit';
  static const _warehouseKey = 'warehouse';

  FacilityModel? facility;

  FormGroup buildForm() => fb.group(<String, Object>{
        _dateOfEntryKey: FormControl<DateTime>(value: DateTime.now()),
        _administrativeUnitKey: FormControl<String>(
          value: context.boundary.name,
        ),
        _warehouseKey: FormControl<FacilityModel>(
          validators: [Validators.required],
          value: facility,
        ),
      });

  @override
  Widget build(BuildContext context) {
    //final isWarehouseManager = context.isWarehouseManager;
    final stockState = context.read<RecordStockBloc>().state;
    final isDistrictLevelProject =
        context.selectedProject.address?.boundaryType == 'District';

    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: (ctx, projectState) {
        final selectedProject = projectState.selectedProject;

        if (selectedProject == null) {
          return const Center(child: Text('No project selected'));
        }

        final theme = Theme.of(context);

        return BlocConsumer<FacilityBloc, FacilityState>(
          listener: (context, state) {
            state.whenOrNull(
              empty: () => NoFacilitiesAssignedDialog.show(context),
            );
          },
          builder: (ctx, facilityState) {
            final facilities = facilityState.whenOrNull(
                  fetched: (facilities, _, __) => facilities,
                ) ??
                [];
            facility = facilityState.whenOrNull(
              fetched: (_, __, facility) => facility,
            );

            return Scaffold(
              body: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ReactiveFormBuilder(
                  form: buildForm,
                  builder: (context, form, child) {
                    return ScrollableContent(
                      header: const Column(children: [
                        BackNavigationHelpHeaderWidget(),
                      ]),
                      footer: SizedBox(
                        height: 85,
                        child: DigitCard(
                          margin: const EdgeInsets.only(
                            left: 0,
                            right: 0,
                            top: 10,
                          ),
                          child: ReactiveFormConsumer(
                            builder: (context, form, child) {
                              return DigitElevatedButton(
                                onPressed: !form.valid
                                    ? null
                                    : () {
                                        form.markAllAsTouched();
                                        if (!form.valid) {
                                          return;
                                        }
                                        final dateOfRecord = form
                                            .control(_dateOfEntryKey)
                                            .value as DateTime;

                                        final facility = form
                                            .control(_warehouseKey)
                                            .value as FacilityModel;

                                        context.read<RecordStockBloc>().add(
                                              RecordStockSaveWarehouseDetailsEvent(
                                                dateOfRecord: dateOfRecord,
                                                facilityModel: facility,
                                              ),
                                            );
                                        context.router.push(
                                          StockDetailsRoute(),
                                        );
                                      },
                                child: child!,
                              );
                            },
                            child: Center(
                              child: Text(
                                localizations.translate(
                                  i18.householdDetails.actionLabel,
                                ),
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
                                  i18.warehouseDetails.warehouseDetailsLabel,
                                ),
                                style: theme.textTheme.displayMedium,
                              ),
                              Column(children: [
                                DigitDateFormPicker(
                                  isEnabled: true,
                                  lastDate: DateTime.now(),
                                  formControlName: _dateOfEntryKey,
                                  label: localizations.translate(
                                    getStockTypeDateLabel(stockState.entryType),
                                  ),
                                  isRequired: false,
                                  confirmText: localizations.translate(
                                    i18.common.coreCommonOk,
                                  ),
                                  cancelText: localizations.translate(
                                    i18.common.coreCommonCancel,
                                  ),
                                ),
                                DigitTextFormField(
                                  readOnly: true,
                                  formControlName: _administrativeUnitKey,
                                  label: localizations.translate(
                                    i18.warehouseDetails.administrativeUnit,
                                  ),
                                ),
                              ]),
                              DigitTextFormField(
                                valueAccessor: FacilityValueAccessor(
                                  facilities,
                                ),
                                isRequired: true,
                                label: localizations.translate(
                                  isDistrictLevelProject
                                      ? i18.warehouseDetails.warehouseNameId
                                      : i18.warehouseDetails
                                          .warehouseNameOrSupervisorNameId,
                                ),
                                suffix: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.search),
                                ),
                                formControlName: _warehouseKey,
                                readOnly: true,
                                onTap: () async {
                                  final parent =
                                      context.router.parent() as StackRouter;
                                  final facility =
                                      await parent.push<FacilityModel>(
                                    FacilitySelectionRoute(
                                      facilities: facilities,
                                    ),
                                  );

                                  if (facility == null) return;
                                  form.control(_warehouseKey).value = facility;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  String getStockTypeDateLabel(StockRecordEntryType type) {
    switch (type) {
      case StockRecordEntryType.receipt:
        return i18.warehouseDetails.dateOfReceipt;
      case StockRecordEntryType.dispatch:
        return i18.warehouseDetails.dateOfIssue;
      case StockRecordEntryType.damaged:
        return i18.warehouseDetails.dateOfDamage;
      case StockRecordEntryType.returned:
        return i18.warehouseDetails.dateOfReturn;
      case StockRecordEntryType.loss:
        return i18.warehouseDetails.dateOfLoss;
      case StockRecordEntryType.gained:
        return i18.warehouseDetails.dateOfGain;
      default:
        return i18.warehouseDetails.dateOfReceipt;
    }
  }
}
