import 'package:digit_components/digit_components.dart';
import 'package:digit_components/models/digit_table_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../blocs/attendance/attendance_individual/individual_attendance_log.dart';
import '../../models/attendance/attendance_model/attendance_row_model.dart';
import '../../widgets/attendance/circular_button.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';

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
  @override
  void dispose() {
    context
        .read<AttendanceIndividualBloc>()
        .add(const DisposeAttendanceIndividualEvent());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AttendanceIndividualBloc, AttendanceIndividualState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const SizedBox.shrink();
            },
            loaded: (attendanceRowModelList) {
              final tableData = getAttendanceData(attendanceRowModelList!);

              return ScrollableContent(
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
                        "Mark Attendance",
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
                            height: 58 + (52.0 * (tableData.length + 0.3)),
                            headerList: headerList(widget.dateTime),
                            tableData: tableData,
                            columnWidth: 100,
                            scrollPhysics: const NeverScrollableScrollPhysics(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            loading: () {
              return const Center(child: CircularProgressIndicator.adaptive());
            },
            error: (error) {
              return const Text("error");
            },
          );
        },
      ),
    );
  }

  List<TableDataRow> getAttendanceData(List<AttendanceRowModel>? list) {
    return list!.map((e) => getAttendanceRow(e)).toList();
  }

  TableDataRow getAttendanceRow(AttendanceRowModel tableDataModel) {
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
          onTap: () {
            print("working- ${tableDataModel.individualId}");
            context.read<AttendanceIndividualBloc>().add(
                  AttendanceMarkEvent(
                    individualId: "1",
                    registarId: '2',
                    status: tableDataModel.individualId,
                  ),
                );
          },
        ),
      ),
      TableData(
        label: tableDataModel.individualId,
        apiKey: tableDataModel.individualId,
      ),
    ]);
  }

  List<TableHeader> headerList(DateTime s) {
    return [
      TableHeader(
        "Name",
        cellKey: 'name',
      ),
      TableHeader(
        //DateFormat("dd MMMM yyyy").format(s).toString(),
        "Attendance",
        cellKey: 'date',
      ),
      TableHeader(
        "UserId",
        cellKey: "userId",
      ),
    ];
  }
}
