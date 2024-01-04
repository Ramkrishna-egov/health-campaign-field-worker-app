import 'dart:async';

import 'package:digit_components/digit_components.dart';
import 'package:digit_components/models/digit_table_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../blocs/attendance/attendance_individual/individual_attendance_log.dart';
import '../../blocs/localization/app_localization.dart';
import '../../models/attendance/attendance_model/attendance_collection_attendee.dart';
import '../../models/attendance/attendance_model/attendance_row_model.dart';
import '../../router/app_router.dart';
import '../../utils/extensions/extensions.dart';
import '../../widgets/attendance/attendance_pagination.dart';
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
  const MarkAttendancePage({
    required this.exitTime,
    required this.entryTime,
    required this.dateTime,
    required this.attendeeIds,
    required this.registerId,
    required this.tenantId,
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
    // context
    //     .read<AttendanceIndividualBloc>()
    //     .add(const DisposeAttendanceIndividualEvent());
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
      child: Scaffold(
        body: BlocListener<AttendanceIndividualBloc, AttendanceIndividualState>(
          listener: (ctx, state) {
            state.maybeMap(
              orElse: () {},
              loaded: (value) {
                if (value.flag && !isDialogOpen) {
                  isDialogOpen = true;
                  showDialog(
                    barrierDismissible: true,
                    context: ctx,
                    builder: (ctx) {
                      return const AlertDialog(
                        title: Text("Loading,"),
                      );
                    },
                  );
                } else {
                  if (isDialogOpen) {
                    Navigator.of(ctx).pop();
                    isDialogOpen = false;

                    context.router.popAndPush(AcknowledgementRoute());
                  }
                  //context.router.pop();
                }
              },
            );
          },
          child:
              BlocBuilder<AttendanceIndividualBloc, AttendanceIndividualState>(
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
                      height: 50,
                      child: DigitElevatedButton(
                        onPressed: currentOffset == 0
                            ? () {
                                context.read<AttendanceIndividualBloc>().add(
                                      UploadAttendanceEvent(
                                        entryTime: widget.entryTime,
                                        exitTime: widget.exitTime,
                                        projectId: context.projectId,
                                        registarId: widget.registerId,
                                        status: 1,
                                        tenantId: widget.tenantId,
                                      ),
                                    );
                              }
                            : null,
                        child: Text(
                          localizations
                              .translate(i18.attendance.markAttendance),
                        ),
                      ),
                    ),
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    header: const BackNavigationHelpHeaderWidget(
                      showHelp: true,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            localizations
                                .translate(i18.attendance.markAttendance),
                            style: DigitTheme
                                .instance.mobileTheme.textTheme.headlineLarge,
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
                            style: DigitTheme
                                .instance.mobileTheme.textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      DigitCard(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DigitTextField(
                              controller: controller,
                              label: '',
                              prefixIcon: const Icon(Icons.search),
                              isFilled: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: DigitTable(
                                height: (100.0 + (tableData.length * 53.0)),
                                headerList:
                                    headerList(widget.dateTime, localizations),
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
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                },
                error: (error) {
                  return const Text("error");
                },
              );
            },
          ),
        ),
      ),
    );
  }

  List<TableDataRow> getAttendanceData(List<AttendeeCollectionModel>? list) {
    return list!.map((e) => getAttendanceRow(e)).toList();
  }

  TableDataRow getAttendanceRow(AttendeeCollectionModel tableDataModel) {
    return TableDataRow([
      TableData(label: tableDataModel.name, apiKey: tableDataModel.name),
      TableData(
        apiKey: tableDataModel.status.toString(),
        widget: CircularButton(
          icon: Icons.circle_rounded,
          size: 15,
          viewOnly: false,
          color: const Color.fromRGBO(0, 100, 0, 1),
          index: double.parse(tableDataModel.status.toString()) ?? -1,
          isNotGreyed: false,
          onTap: (widget.dateTime.day == DateTime.now().day)
              ? () {
                  print("working- ${tableDataModel.individualId}");
                  context.read<AttendanceIndividualBloc>().add(
                        AttendanceMarkEvent(
                          individualId: tableDataModel.individualId!,
                          registarId: '2',
                          status: tableDataModel.individualId,
                          id: tableDataModel.id!,
                        ),
                      );
                }
              : null,
        ),
      ),
      TableData(
        label: tableDataModel.individualId,
        apiKey: tableDataModel.individualId,
      ),
      TableData(
        label: tableDataModel.id.toString(),
        apiKey: tableDataModel.id.toString(),
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
        //DateFormat("dd MMMM yyyy").format(s).toString(),
        localizations.translate(i18.attendance.tableHeaderAttendance),
        cellKey: 'date',
      ),
      TableHeader(
        localizations.translate(i18.attendance.tableHeaderUserId),
        cellKey: "userId",
      ),
      TableHeader(
        "sl",
        cellKey: "sl",
      ),
    ];
  }
}
