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
  @override
  void dispose() {
    context
        .read<AttendanceIndividualBloc>()
        .add(const DisposeAttendanceIndividualEvent());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("re${widget.dateTime.day}");
    print("po${DateTime.now().day}");
    final localizations = AppLocalizations.of(context);

    return Scaffold(
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
        child: BlocBuilder<AttendanceIndividualBloc, AttendanceIndividualState>(
          buildWhen: (p, c) {
            return p != c ? true : false;
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const SizedBox.shrink();
              },
              loaded: (
                attendanceRowModelList,
                attendanceCollectionModel,
                offsetData,
                currentOffset,
                countData,
                limitData,
                flag,
              ) {
                final tableData = getAttendanceData(attendanceCollectionModel!);

                return ScrollableContent(
                  footer: SizedBox(
                    height: 50,
                    child: DigitElevatedButton(
                      child: Text(
                        localizations.translate(i18.attendance.markAttendance),
                      ),
                      onPressed: () {
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
                      },
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
                          const DigitTextField(
                            label: '',
                            prefixIcon: Icon(Icons.search),
                            isFilled: true,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DigitTable(
                              height: (55.0 * (tableData.length)),
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
