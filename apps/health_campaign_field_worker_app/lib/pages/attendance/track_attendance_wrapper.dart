import 'package:flutter/material.dart';
import '../../widgets/boundary_selection_wrapper.dart';

import '../../router/app_router.dart';

class TrackAttendanceWrapperPage extends StatelessWidget with AutoRouteWrapper {
  const TrackAttendanceWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BoundarySelectionWrapper(child: AutoRouter());
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    // TODO: implement wrappedRoute
    return this;
  }
}
