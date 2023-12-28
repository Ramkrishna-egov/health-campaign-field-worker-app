import 'package:digit_components/digit_components.dart';
import 'package:digit_components/models/digit_table_model.dart';
//import 'package:digit_components/models/digit_table_model.dart';
import 'package:digit_components/widgets/atoms/digit_radio_button_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_campaign_field_worker_app/pages/attendance/track-attendance_inbox.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../blocs/attendance/attendance_individual_registar.dart';
import '../../blocs/attendance/attendance_muster_roll.dart';
import '../../blocs/attendance/attendance_register.dart';
import '../../models/attendance/attendance_payload_model.dart';
import '../../models/attendance/attendance_registry_model.dart';
import '../../models/attendance/attendee_model.dart';
import '../../router/app_router.dart';
import '../../utils/attendance/date_util_attendance.dart';
import '../../utils/constants.dart';

import '../../widgets/attendance/circular_button.dart';
import '../../widgets/attendance/custom_info_card.dart';
import '../../widgets/attendance/date_range_picker.dart';
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
  List<Map<dynamic, dynamic>> projectList = [];
  List<AttendanceRegister> attendanceRegisters = [];
  var dateController = TextEditingController();
  var searchController = TextEditingController();
  DateRangePickerController rangePickerController = DateRangePickerController();

  int? registerStartDate;
  int? registerEndDate;
  DateRange? selectedDateRange;
  List<TrackAttendanceTableData> newList = [];
  List<Map<String, dynamic>> updateAttendeePayload = [];
  List<Map<String, dynamic>> createAttendeePayload = [];
  DaysInRange? daysInRange;
  List<String> dates = [];
  List<TableDataRow> tableData = [];

  @override
  void initState() {
    context.read<AttendanceIndividualProjectSearchBloc>().add(
          SearchIndividualAttendanceProjectEvent(
            id: widget.id,
            tenantId: widget.tenantId,
          ),
        );

    super.initState();
  }

  @override
  void deactivate() {
    context.read<MusterRollEstimateBloc>().add(
          const DisposeEstimateMusterRollEvent(),
        );
    super.deactivate();
  }

  @override
  void dispose() {
    // Clear the data when the widget is disposed
    newList.clear();
    tableData.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocListener<AttendanceIndividualProjectSearchBloc,
            AttendanceIndividualProjectSearchState>(
          listener: (context, state) {},
          child: BlocBuilder<AttendanceIndividualProjectSearchBloc,
              AttendanceIndividualProjectSearchState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                loaded: (AttendanceRegistersModel? attendanceModel) {
                  var list = <Widget>[];

                  attendanceRegisters = List<AttendanceRegister>.from(
                    attendanceModel!.attendanceRegister!,
                  );

                  attendanceRegisters.sort((a, b) =>
                      b.registerAuditDetails!.lastModifiedTime!.compareTo(
                        a.registerAuditDetails!.lastModifiedTime!.toInt(),
                      ));

                  projectList = attendanceRegisters
                      .where(
                        (element) =>
                            element.id == widget.id &&
                            element.tenantId == widget.tenantId,
                      )
                      .map((e) => {
                            "Work order Number": e
                                    .attendanceRegisterAdditionalDetails
                                    ?.contractId ??
                                "",
                            "Register ID": e.registerNumber,
                            "Project ID": e.attendanceRegisterAdditionalDetails
                                    ?.projectId ??
                                "",
                            "Project Name": e
                                    .attendanceRegisterAdditionalDetails
                                    ?.projectName ??
                                "",
                            "Project Description": e
                                    .attendanceRegisterAdditionalDetails
                                    ?.projectDesc ??
                                "",
                            " Individuals Count": e.attendeesEntries != null
                                ? e.attendeesEntries
                                    ?.where((att) =>
                                        att.denrollmentDate == null ||
                                        !(att.denrollmentDate! <=
                                            DateTime.now()
                                                .millisecondsSinceEpoch))
                                    .toList()
                                    .length
                                : 0,
                            "Start Date": DateFormat('dd/MM/yyyy').format(
                              DateTime.fromMillisecondsSinceEpoch(
                                e.startDate!,
                              ),
                            ),
                            "End date": DateFormat('dd/MM/yyyy').format(
                              DateTime.fromMillisecondsSinceEpoch(
                                e.endDate!,
                              ),
                            ),
                          })
                      .toList();

                  registerStartDate =
                      attendanceModel.attendanceRegister!.first.startDate;
                  registerEndDate =
                      attendanceModel.attendanceRegister!.first.endDate;

                  list.add(RegistarCard(
                    data: projectList[0] as Map<String, dynamic>,
                    regisId: '',
                    tenatId: '',
                  ));

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BackNavigationHelpHeaderWidget(),
                      ...list,
                      DateRangePicker(
                        label: "Select a week for attendance",
                        controller: dateController,
                        onChangeOfDate: _onDateChange,
                        rangePickerController: rangePickerController,
                        onViewChange: _onViewChangedDate,
                        selectionMode: DateRangePickerSelectionMode.range,
                        onSubmit: () =>
                            onSubmit(attendanceRegisters.first.id.toString()),
                        onCancel: () {
                          dateController.text = '';
                          selectedDateRange = null;
                        },
                        applyLabel: "apply",
                        cancelLabel: "cancel",
                      ),
                      CustomInfoCard(
                        title: "info",
                        description: "we are good to know",
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircularButton(
                                  icon: Icons.circle_rounded,
                                  size: 15,
                                  color: const Color.fromRGBO(0, 100, 0, 1),
                                  index: 1,
                                  isNotGreyed: false,
                                  onTap: () {},
                                ),
                                const Text("Full Attendance"),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                CircularButton(
                                  icon: Icons.circle_rounded,
                                  size: 15,
                                  color: const Color.fromRGBO(0, 100, 0, 1),
                                  index: 0.5,
                                  isNotGreyed: false,
                                  onTap: () {},
                                ),
                                const Text("Half Full Attendance"),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                CircularButton(
                                  icon: Icons.circle_rounded,
                                  size: 15,
                                  color: const Color.fromRGBO(0, 100, 0, 1),
                                  index: 0,
                                  isNotGreyed: false,
                                  onTap: () {},
                                ),
                                const Text("Absent"),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // textfield
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: searchController,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: "search name",
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIconConstraints: const BoxConstraints(
                              minWidth: 0,
                              minHeight: 0,
                            ),
                            prefixStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.search_sharp),
                            ),
                          ),
                          onChanged: (val) => {onTextSearch()},
                        ),
                      ),

//

                      BlocBuilder<MusterRollEstimateBloc,
                          MusterRollEstimateState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const SizedBox.shrink(),
                            loading: () => const SizedBox(
                              width: 60,
                              height: 60,
                              child: CircularProgressIndicator.adaptive(),
                            ),
                            loaded: (estimateMusterRollsModel) {
                              final attendeeList = estimateMusterRollsModel!
                                  .musterRoll!.first.individualEntries!
                                  // .where((e) => (e.denrollmentDate == null ||
                                  //     !(e.denrollmentDate! <=
                                  //         DateTime.now().millisecondsSinceEpoch)))
                                  .map(
                                    (e) => AttendeesTrackList(
                                      gender: e
                                          .musterIndividualAdditionalDetails!
                                          .gender,
                                      name: e.musterIndividualAdditionalDetails!
                                          .userName!,
                                      //aadhaar: 'scds',
                                      individualGaurdianName: e
                                          .musterIndividualAdditionalDetails!
                                          .fatherName,
                                      individualId: e.individualId,
                                      // skillCodeList: [],
                                      id: 'sacdscdsc',
                                      monEntryId: null,
                                      monExitId: null,
                                      monIndex: -1,
                                      tueEntryId: null,
                                      tueExitId: null,
                                      tueIndex: -1,
                                      wedEntryId: null,
                                      wedExitId: null,
                                      wedIndex: -1,
                                      thuEntryId: null,
                                      thuExitId: null,
                                      thursIndex: -1,
                                      friEntryId: null,
                                      friExitId: null,
                                      friIndex: -1,
                                      satEntryId: null,
                                      satExitId: null,
                                      satIndex: -1,
                                      sunEntryId: null,
                                      sunExitId: null,
                                      sunIndex: -1,
                                    ),
                                  )
                                  .toList();

                              if (newList.isEmpty) {
                                for (var i = 0; i < attendeeList.length; i++) {
                                  var item1 = attendeeList[i];
                                  TrackAttendanceTableData data =
                                      TrackAttendanceTableData();
                                  data.name = item1.name ?? '';
                                  data.aadhaar = item1.aadhaar ?? '';
                                  data.gender = item1.gender ?? '';
                                  data.individualGaurdianName =
                                      item1.individualGaurdianName ?? '';
                                  data.individualId = item1.individualId ?? '';
                                  data.id = item1.id ?? '';
                                  data.skill = item1.skill ?? '';
                                  data.skillCodeList =
                                      item1.skillCodeList ?? [];
                                  data.monIndex = item1.monIndex;
                                  data.monEntryId = item1.monEntryId;
                                  data.monExitId = item1.monExitId;
                                  data.tueIndex = item1.tueIndex;
                                  data.tueEntryId = item1.tueEntryId;
                                  data.tueExitId = item1.tueExitId;
                                  data.wedIndex = item1.wedIndex;
                                  data.wedEntryId = item1.wedEntryId;
                                  data.wedExitId = item1.wedExitId;
                                  data.thuIndex = item1.thursIndex;
                                  data.thuEntryId = item1.thuEntryId;
                                  data.thuExitId = item1.thuExitId;
                                  data.friIndex = item1.friIndex;
                                  data.friEntryId = item1.friEntryId;
                                  data.friExitId = item1.friExitId;
                                  data.satIndex = item1.satIndex;
                                  data.satEntryId = item1.satEntryId;
                                  data.satExitId = item1.satExitId;
                                  data.sunIndex = item1.sunIndex;
                                  data.sunEntryId = item1.sunEntryId;
                                  data.sunExitId = item1.sunExitId;

                                  newList.add(data);
                                }
                              }

                              tableData = getAttendanceData(newList);

                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: DigitTable(
                                  headerList: headerList,
                                  tableData: tableData,
                                  height:
                                      58 + (52.0 * (tableData.length + 0.2)),
                                  scrollPhysics:
                                      const NeverScrollableScrollPhysics(),
                                  columnWidth: 100,
                                ),
                              );
                            },
                            error: (err) => const Text("something went wrong"),
                          );
                        },
                      ),

                      // table
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void _onDateChange(DateRangePickerSelectionChangedArgs args) {
    int firstDayOfWeek = DateTime.monday;
    int endDayOfWeek = DateTime.sunday;
    endDayOfWeek = endDayOfWeek <= 0 ? 7 + endDayOfWeek : endDayOfWeek;

    PickerDateRange ranges = args.value;
    DateTime? date1 = ranges.startDate;
    DateTime? date2 = ranges.endDate ?? ranges.startDate;

    if (date1 != null && date2 != null) {
      if (date1.isAfter(date2)) {
        var date = date1;
        date1 = date2;
        date2 = date;
      }

      DateTime weekStart = date1
          .subtract(Duration(days: (date1.weekday - firstDayOfWeek + 7) % 7));
      DateTime weekEnd =
          date2.add(Duration(days: (endDayOfWeek - date2.weekday + 7) % 7));

      if (weekStart.isAfter(date1)) {
        weekStart = date1;
      }

      if (weekEnd.isBefore(date2)) {
        weekEnd = date2;
      }

      rangePickerController.selectedRange = PickerDateRange(weekStart, weekEnd);
      dateController.text =
          '${DateFormat('dd/MM/yyyy').format(weekStart)} - ${DateFormat('dd/MM/yyyy').format(weekEnd)}';

      selectedDateRange = DateRange(
        dateController.text,
        // DateFormats.dateToTimeStamp(DateFormat('dd/MM/yyyy').format(weekStart)),
        // DateFormats.dateToTimeStamp(DateFormat('dd/MM/yyyy').format(weekEnd)),
        DateFormat('dd/MM/yyyy')
            .parse(DateFormat('dd/MM/yyyy').format(weekStart))
            .toUtc()
            .millisecondsSinceEpoch,
        DateFormat('dd/MM/yyyy')
            .parse(DateFormat('dd/MM/yyyy').format(weekEnd))
            .toUtc()
            .millisecondsSinceEpoch,
      );
    }
  }

  void _onViewChangedDate(DateRangePickerViewChangedArgs args) {
    final DateTime visibleStartDate = args.visibleDateRange.startDate!;
  }

  void onTextSearch() {
    if (searchController.text.isNotEmpty) {
      setState(() {
        newList.retainWhere((e) => e.name!
            .toLowerCase()
            .contains(searchController.text.toLowerCase()));
      });
    } else {
      onSubmit(widget.id);
    }
  }

  void onSubmit(String id) {
    if (selectedDateRange != null) {
      newList.clear();
      updateAttendeePayload.clear();
      createAttendeePayload.clear();

      context.read<MusterRollEstimateBloc>().add(
            EstimateMusterRollEvent(
              tenantId: widget.tenantId,
              registerId: id.toString(),
              startDate: selectedDateRange!.startDate,
              endDate: selectedDateRange!.endDate,
            ),
          );

      dates = DateFormats.getFormattedDatesOfAWeek(
        selectedDateRange!.startDate,
        selectedDateRange!.endDate,
      );
      daysInRange = DateFormats.checkDaysInRange(
        selectedDateRange!.startDate,
        selectedDateRange!.endDate,
        registerStartDate!,
        registerEndDate!,
      );
    }
  }

  List<TableHeader> get headerList => [
        TableHeader(
          "name",
          cellKey: 'name',
        ),
        TableHeader(
          "Father/Husband",
          cellKey: 'individualGaurdianName',
        ),
        TableHeader("moday", cellKey: dates.isNotEmpty ? dates[0] : ''),
        TableHeader("tues day", cellKey: dates.isNotEmpty ? dates[1] : ''),
        TableHeader("wed", cellKey: dates.isNotEmpty ? dates[2] : ''),
        TableHeader("thursday", cellKey: dates.isNotEmpty ? dates[3] : ''),
        TableHeader("friday", cellKey: dates.isNotEmpty ? dates[4] : ''),
        TableHeader("satur day", cellKey: dates.isNotEmpty ? dates[5] : ''),
        TableHeader("sunday", cellKey: dates.isNotEmpty ? dates[6] : ''),
        TableHeader(
          "40",
        ),
      ];
  ////////////////
  ///
  ///
  TableDataRow getAttendanceRow(TrackAttendanceTableData tableDataModel) {
    return TableDataRow([
      TableData(
        label: tableDataModel.name ?? "work",
        apiKey: tableDataModel.name,
      ),
      TableData(
        label: tableDataModel.individualGaurdianName ?? "ram",
        apiKey: tableDataModel.individualGaurdianName ?? "",
      ),
      TableData(
        apiKey: tableDataModel.monEntryId ?? "hh",
        widget: CircularButton(
          icon: Icons.circle_rounded,
          size: 15,
          viewOnly: false,
          color: const Color.fromRGBO(0, 100, 0, 1),
          index: tableDataModel.monIndex ?? -1,
          isNotGreyed: false,
          onTap: null,
        ),
      ),
      TableData(label: "helow"),
      TableData(
        label: 'go',
      ),
      TableData(label: "usa"),
      TableData(label: "india"),
      TableData(label: "sjdds"),
      TableData(label: "hdsbfdsh"),
      TableData(
        label:
            "${convertedValue(tableDataModel.monIndex!.toDouble()) + convertedValue(tableDataModel.tueIndex!.toDouble()) + convertedValue(tableDataModel.wedIndex!.toDouble()) + convertedValue(tableDataModel.thuIndex!.toDouble()) + convertedValue(tableDataModel.friIndex!.toDouble()) + convertedValue(tableDataModel.satIndex!.toDouble()) + convertedValue(tableDataModel.sunIndex!.toDouble())}"
                .toString(),
      ),
    ]);
  }

  double convertedValue(double tableVal) {
    if (tableVal < 0) {
      return 0;
    } else {
      return tableVal;
    }
  }

  List<TableDataRow> getAttendanceData(List<TrackAttendanceTableData> list) {
    return list.map((e) => getAttendanceRow(e)).toList();
  }
}

class DateRange {
  final String range;
  final int startDate;
  final int endDate;
  DateRange(this.range, this.startDate, this.endDate);
}
