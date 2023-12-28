import 'package:flutter/material.dart';

import '../../widgets/localized.dart';

class MarkAttendancePage extends LocalizedStatefulWidget {
  const MarkAttendancePage({super.key, super.appLocalizations});

  @override
  State<MarkAttendancePage> createState() => _MarkAttendancePageState();
}

class _MarkAttendancePageState extends State<MarkAttendancePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Wel Come"),
    );
  }
}
