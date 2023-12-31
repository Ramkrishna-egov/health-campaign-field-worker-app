import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_radio_button_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

//import 'package:digit_components/models/digit_table_model.dart';

import '../../blocs/attendance/attendance_individual/individual_attendance_log.dart';
import '../../router/app_router.dart';
import '../../widgets/attendance/custom_info_card.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';

class AttendanceDateSessionSelectionPage extends LocalizedStatefulWidget {
  final String id;
  final String tenantId;
  const AttendanceDateSessionSelectionPage({
    required this.id,
    required this.tenantId,
    super.key,
    super.appLocalizations,
  });

  @override
  State<AttendanceDateSessionSelectionPage> createState() =>
      _AttendanceDateSessionSelectionPageState();
}

class _AttendanceDateSessionSelectionPageState
    extends State<AttendanceDateSessionSelectionPage> {
  static const _dateOfSession = 'dateOfSession';
  static const _sessionRadio = 'sessionRadio';
  @override
  void initState() {
    // context.read<AttendanceIndividualProjectSearchBloc>().add(
    //       SearchIndividualAttendanceProjectEvent(
    //         id: widget.id,
    //         tenantId: widget.tenantId,
    //       ),
    //     );

    super.initState();
  }

  @override
  void deactivate() {
    // context.read<MusterRollEstimateBloc>().add(
    //       const DisposeEstimateMusterRollEvent(),
    //     );
    super.deactivate();
  }

  @override
  void dispose() {
    // Clear the data when the widget is disposed

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReactiveFormBuilder(
        form: () => buildForm(
          context,
        ),
        builder: (context, form, child) {
          return ScrollableContent(
            header: const BackNavigationHelpHeaderWidget(
              showHelp: true,
            ),
            footer: DigitElevatedButton(
              child: const Text("View Attendance"),
              onPressed: () {
                if (form.control(_sessionRadio).value == null) {
                  form.control(_sessionRadio).setErrors({'': true});
                }
                form.markAllAsTouched();

                if (!form.valid) {
                  return;
                } else {
                  DateTime s = form.control(_dateOfSession).value;

                  debugPrint(widget.tenantId);
                  debugPrint(s.microsecondsSinceEpoch.toString());
                  print(form.control(_sessionRadio).value.key.toString());

                  context.read<AttendanceIndividualBloc>().add(
                        const AttendanceIndividualLogSearchEvent(
                          attendeeId: ["qewq", "qe"],
                          limit: 10,
                          offset: 0,
                        ),
                      );
                  context.router.push(MarkAttendanceRoute(
                    attendeeIds: const ["1", "2"],
                    registerId: '1234',
                    tenantId: '4321',
                    dateTime: s,
                    entryTime: s.millisecondsSinceEpoch,
                    exitTime: s.microsecondsSinceEpoch + 10,
                  ));
                }
              },
            ),
            children: [
              DigitCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Session",
                      style: DigitTheme
                          .instance.mobileTheme.textTheme.headlineLarge,
                    ),
                    const DigitDateFormPicker(
                      label: "Session Start",
                      formControlName: _dateOfSession,
                      cancelText: "cancelText",
                      confirmText: "confirmText",
                    ),
                    DigitRadioButtonList<KeyValue>(
                      errorMessage: 'please select any one',
                      formControlName: _sessionRadio,
                      options: [
                        KeyValue("morning session", 0),
                        KeyValue("evening session", 1),
                      ],
                      valueMapper: (value) {
                        return value.label;
                      },
                    ),
                    const CustomInfoCard(
                      title: 'Missed Attendance',
                      description:
                          'Please make sure you mark attendance for the missing dates',
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  FormGroup buildForm(BuildContext ctx) {
    return fb.group(<String, Object>{
      _dateOfSession:
          FormControl<DateTime>(value: DateTime.now(), validators: []),
      _sessionRadio: FormControl<KeyValue>(value: null),
    });
  }
}

class KeyValue {
  String label;
  dynamic key;
  KeyValue(this.label, this.key);
}
