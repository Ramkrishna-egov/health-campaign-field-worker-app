import 'dart:async';

import 'package:digit_components/digit_components.dart';
import 'package:digit_components/models/digit_table_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../blocs/attendance/attendance_individual/individual_attendance_log.dart';
import '../../blocs/attendance/attendance_individual/mark_attendance.dart';
import '../../blocs/localization/app_localization.dart';
import '../../models/attendance/attendance_model/attendance_collection_attendee.dart';
import '../../router/app_router.dart';
import '../../utils/extensions/extensions.dart';
import '../../widgets/attendance/circular_button.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';
import '../../utils/i18_key_constants.dart' as i18;

class MarkAttendancePage extends LocalizedStatefulWidget {
  final List<String> attendeeIds;
  final String registerId;
  final String tenantId;
  final DateTime dateTime;
  final int entryTime;
  final int exitTime;
  final DateTime eventStartTime;
  final DateTime eventEndTime;
  const MarkAttendancePage({
    required this.exitTime,
    required this.entryTime,
    required this.dateTime,
    required this.attendeeIds,
    required this.registerId,
    required this.tenantId,
    required this.eventStartTime,
    required this.eventEndTime,
    super.key,
    super.appLocalizations,
  });

  @override
  State<MarkAttendancePage> createState() => _MarkAttendancePageState();
}

class _MarkAttendancePageState extends State<MarkAttendancePage> {
  bool isDialogOpen = false;
  Timer? _debounce;
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(searchByName);
    context.read<AttendanceIndividualBloc>().add(
          AttendanceIndividualLogSearchEvent(
            attendeeId: widget.attendeeIds,
            limit: 10,
            offset: 0,
            currentDate: widget.dateTime.millisecondsSinceEpoch,
            entryTime: widget.entryTime,
            exitTime: widget.exitTime,
            projectId: context.projectId,
            registerId: widget.registerId,
            tenantId: widget.tenantId,
            eventEndDate: widget.eventEndTime.millisecondsSinceEpoch,
            eventStartDate: widget.eventStartTime.millisecondsSinceEpoch,
          ),
        );

    super.initState();
  }

  void searchByName() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (controller.text.length > 2) {
        context.read<AttendanceIndividualBloc>().add(
              SearchAttendeesEvent(
                entryTime: widget.entryTime,
                exitTime: widget.exitTime,
                name: controller.text,
                tenantId: widget.tenantId,
                registarId: widget.registerId,
                projectId: context.projectId,
              ),
            );
      } else if (controller.text.isEmpty) {
        context.read<AttendanceIndividualBloc>().add(
              SearchAttendeesEvent(
                entryTime: widget.entryTime,
                exitTime: widget.exitTime,
                name: controller.text,
                tenantId: widget.tenantId,
                registarId: widget.registerId,
                projectId: context.projectId,
              ),
            );
      }
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return WillPopScope(
      onWillPop: () async {
        context
            .read<AttendanceIndividualBloc>()
            .add(const DisposeAttendanceIndividualEvent());

        return true;
      },
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: BlocListener<MarkAttendanceBloc, MarkAttendanceState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                loaded: (value) {
                  if (value.flagStatus) {
                    Navigator.of(
                      context,
                      rootNavigator: true,
                    ).popUntil(
                      (route) => route is! PopupRoute,
                    );

                    context.router.popAndPush(
                      AttendanceAcknowledgementRoute(
                        enableViewHousehold: true,
                        secondaryLabel: localizations.translate(
                          i18.attendance.backToAttendanceManager,
                        ),
                        actionLabel: localizations.translate(
                          i18.acknowledgementSuccess.goToHome,
                        ),
                        label: localizations.translate(
                          i18.acknowledgementSuccess.acknowledgementLabelText,
                        ),
                        description: localizations.translate(
                          i18.acknowledgementSuccess
                              .acknowledgementDescriptionText,
                        ),
                      ),
                    );
                  } else {}
                },
                loading: (value) {
                  Navigator.of(
                    context,
                    rootNavigator: true,
                  ).popUntil(
                    (route) => route is! PopupRoute,
                  );
                  Loaders.showLoadingDialog(context);
                },
                error: (value) {
                  Navigator.of(
                    context,
                    rootNavigator: true,
                  ).popUntil(
                    (route) => route is! PopupRoute,
                  );
                  showErrorDialog(
                    context,
                    localizations,
                    false,
                    map: {
                      "eventEnd": widget.eventEndTime,
                      "eventStart": widget.eventStartTime,
                      "msg": value.error.toString() ?? "",
                    },
                  );
                },
              );
            },
            child: BlocBuilder<MarkAttendanceBloc, MarkAttendanceState>(
              builder: (context, state) {
                return BlocBuilder<AttendanceIndividualBloc,
                    AttendanceIndividualState>(
                  buildWhen: (p, c) {
                    return p != c ? true : false;
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                      loaded: (
                        attendanceSearchModelList,
                        attendanceCollectionModel,
                        offsetData,
                        currentOffset,
                        countData,
                        limitData,
                        flag,
                      ) {
                        List<TableDataRow> tableData = [];

                        tableData = attendanceSearchModelList!.isNotEmpty
                            ? getAttendanceData(attendanceSearchModelList)
                            : getAttendanceData(attendanceCollectionModel!);

                        return ScrollableContent(
                          footer: SizedBox(
                            height: 85,
                            child: DigitCard(
                              margin: const EdgeInsets.only(
                                left: 0,
                                right: 0,
                                top: 10,
                              ),
                              child: DigitElevatedButton(
                                onPressed: (widget.dateTime.day ==
                                            DateTime.now().day &&
                                        !(attendanceCollectionModel!
                                            .first.uploadToServer))
                                    ? () {
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();

                                        if (currentOffset == 0) {
                                          markConfirmationDialog(
                                            context.read<MarkAttendanceBloc>(),
                                            localizations,
                                          );
                                        } else {
                                          showWarningDialog(
                                            context,
                                            localizations,
                                          );
                                        }
                                      }
                                    : () {
                                        context.router.pop();
                                      },
                                child: Text(
                                  localizations.translate(
                                    (widget.dateTime.day ==
                                                DateTime.now().day &&
                                            !(attendanceCollectionModel!
                                                .first.uploadToServer))
                                        ? i18.attendance.markAttendance
                                        : i18.attendance.closeButton,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          header: const BackNavigationHelpHeaderWidget(
                            showHelp: false,
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  localizations.translate(
                                    i18.attendance.markAttendanceLabel,
                                  ),
                                  style: DigitTheme.instance.mobileTheme
                                      .textTheme.headlineLarge,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  DateFormat("dd MMMM yyyy")
                                      .format(widget.dateTime)
                                      .toString(),
                                  style: DigitTheme.instance.mobileTheme
                                      .textTheme.headlineMedium,
                                ),
                              ),
                            ),
                            DigitCard(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  DigitTextField(
                                    hintText: "Search by Name",
                                    controller: controller,
                                    label: '',
                                    prefixIcon: const Icon(Icons.search),
                                    isFilled: true,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: DigitTable(
                                      height:
                                          (100.0 + (tableData.length * 53.0)),
                                      headerList: headerList(
                                        widget.dateTime,
                                        localizations,
                                      ),
                                      tableData: tableData,
                                      columnWidth: 100,
                                      scrollPhysics:
                                          const NeverScrollableScrollPhysics(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      loading: () {
                        return Center(
                          child: Loaders.circularLoader(context),
                        );
                      },
                      error: (error) {
                        return Center(
                          child: Card(
                            child: SizedBox(
                              height: 240,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.error_outline_outlined,
                                    size: 40,
                                    color:
                                        DigitTheme.instance.colorScheme.error,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16.0,
                                      bottom: 8.0,
                                    ),
                                    child: Text(
                                      "${localizations.translate(i18.attendance.somethingWentWrong)}!!!",
                                      style: DigitTheme.instance.mobileTheme
                                          .textTheme.headlineMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 80,
                                      height: 40,
                                      child: DigitElevatedButton(
                                        onPressed: widget.attendeeIds.isNotEmpty
                                            ? () {
                                                context
                                                    .read<
                                                        AttendanceIndividualBloc>()
                                                    .add(
                                                      AttendanceIndividualLogSearchEvent(
                                                        attendeeId:
                                                            widget.attendeeIds,
                                                        limit: 10,
                                                        offset: 0,
                                                        currentDate: widget
                                                            .dateTime
                                                            .millisecondsSinceEpoch,
                                                        entryTime:
                                                            widget.entryTime,
                                                        exitTime:
                                                            widget.exitTime,
                                                        projectId:
                                                            context.projectId,
                                                        registerId:
                                                            widget.registerId,
                                                        tenantId:
                                                            widget.tenantId,
                                                        eventEndDate: widget
                                                            .eventEndTime
                                                            .millisecondsSinceEpoch,
                                                        eventStartDate: widget
                                                            .eventStartTime
                                                            .millisecondsSinceEpoch,
                                                      ),
                                                    );
                                              }
                                            : () {
                                                Navigator.of(context).pop();
                                              },
                                        child: Text(localizations.translate(
                                          i18.attendance.closeButton,
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showErrorDialog(
    BuildContext context,
    AppLocalizations k,
    bool retry, {
    required Map<String, dynamic> map,
  }) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline_outlined,
                    size: 40,
                    color: DigitTheme.instance.colorScheme.error,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      map['msg'] == i18.attendance.atleastOneAttendeePresent
                          ? k.translate(
                              i18.attendance.atleastOneAttendeePresent)
                          : "${k.translate(i18.attendance.somethingWentWrong)} \n ${k.translate(i18.attendance.pleaseTryAgain)}!!",
                      style: DigitTheme
                          .instance.mobileTheme.textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: DigitElevatedButton(
                      onPressed: retry
                          ? () {
                              Navigator.of(context).pop();
                              context.read<AttendanceIndividualBloc>().add(
                                    AttendanceIndividualLogSearchEvent(
                                      attendeeId: widget.attendeeIds,
                                      limit: 10,
                                      offset: 0,
                                      currentDate: widget
                                          .dateTime.millisecondsSinceEpoch,
                                      entryTime: widget.entryTime,
                                      exitTime: widget.exitTime,
                                      projectId: context.projectId,
                                      registerId: widget.registerId,
                                      tenantId: widget.tenantId,
                                      eventStartDate: map["eventStart"]!
                                          .millisecondsSinceEpoch,
                                      eventEndDate: map["eventEnd"]!
                                          .millisecondsSinceEpoch,
                                    ),
                                  );
                            }
                          : () {
                              Navigator.of(context).pop();
                            },
                      child: Text(
                        k.translate(
                          retry
                              ? i18.attendance.retryButton
                              : i18.attendance.closeButton,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List<TableDataRow> getAttendanceData(List<AttendeeCollectionModel>? list) {
    return list!.map((e) => getAttendanceRow(e)).toList();
  }

  TableDataRow getAttendanceRow(AttendeeCollectionModel tableDataModel) {
    return TableDataRow([
      TableData(
        label: tableDataModel.name,
        apiKey: tableDataModel.name,
      ),
      TableData(
        label: tableDataModel.lastName,
        apiKey: tableDataModel.lastName,
      ),
      TableData(
        apiKey: tableDataModel.status.toString(),
        widget: CircularButton(
          icon: Icons.circle_rounded,
          size: 15,
          viewOnly: (widget.dateTime.day == DateTime.now().day &&
                  !tableDataModel.uploadToServer)
              ? false
              : true,
          color: const Color.fromRGBO(0, 100, 0, 1),
          index: double.parse(tableDataModel.status.toString()) ?? -1,
          isNotGreyed: false,
          onTap: () {
            context.read<AttendanceIndividualBloc>().add(
                  AttendanceMarkEvent(
                    individualId: tableDataModel.individualId!,
                    registarId: tableDataModel!.registerId!,
                    status: tableDataModel.individualId,
                    id: tableDataModel.id!,
                    eventStartDate: tableDataModel.eventStartDate,
                    eventEndDate: tableDataModel.eventEndDate,
                  ),
                );
          },
        ),
      ),
    ]);
  }

  List<TableHeader> headerList(DateTime s, AppLocalizations localizations) {
    return [
      TableHeader(
        localizations.translate(i18.attendance.tableHeaderName),
        cellKey: 'name',
      ),
      TableHeader(
        localizations.translate(i18.attendance.tableHeaderId),
        cellKey: "lastName",
      ),
      TableHeader(
        //DateFormat("dd MMMM yyyy").format(s).toString(),
        localizations.translate(i18.attendance.tableHeaderAttendance),
        cellKey: 'date',
      ),
    ];
  }

  Future<dynamic> showWarningDialog(BuildContext context, dynamic k) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.warning_outlined,
                    size: 40,
                    color: DigitTheme.instance.colorScheme.error,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      k.translate(
                        i18.attendance.checkAttendanceMark,
                      ),
                      style: DigitTheme
                          .instance.mobileTheme.textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      k.translate(
                        i18.attendance.attendanceWarningBody,
                      ),
                      style:
                          DigitTheme.instance.mobileTheme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: DigitElevatedButton(
                      child: Text(
                        k.translate(
                          i18.attendance.closeButton,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> markConfirmationDialog(
    MarkAttendanceBloc data,
    dynamic k,
  ) async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          child: Card(
            child: SizedBox(
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      k.translate(i18.attendance.confirmationLabel),
                      style: DigitTheme
                          .instance.mobileTheme.textTheme.headlineMedium,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 4.0,
                    ),
                    child: Text(
                      k.translate(i18.attendance.confirmationDesc),
                      // "The Attendance details for the Session have been pre-populated.Please confirm before submitting.",
                      style:
                          DigitTheme.instance.mobileTheme.textTheme.bodyMedium!,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 4.0,
                      bottom: 8.0,
                    ),
                    child: Text(
                      k.translate(i18.attendance.confirmationDescNote),
                      // "Note: You can not edit attendance details for the past days",
                      style:
                          DigitTheme.instance.mobileTheme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: DigitElevatedButton(
                      child: Text(
                        k.translate(i18.attendance.proceed),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                        data.add(
                          UploadAttendanceMarkEvent(
                            entryTime: widget.entryTime,
                            exitTime: widget.exitTime,
                            projectId: context.projectId,
                            registarId: widget.registerId,
                            status: 1,
                            tenantId: widget.tenantId,
                          ),
                        );
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      k.translate(i18.attendance.goBackButton),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
