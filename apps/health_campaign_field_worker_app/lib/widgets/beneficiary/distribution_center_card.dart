import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/boundary/boundary.dart';
import '../../utils/extensions/extensions.dart';

class DistributionCenterCard extends StatelessWidget {
  final bool leftPadding;
  const DistributionCenterCard({super.key, required this.leftPadding});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoundaryBloc, BoundaryState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
              left: leftPadding ? 8 : 0, right: 8, top: 8, bottom: 8),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Distribution Center: ${context.boundaryOrNull!.name!}",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.left,
            ),
          ),
        );
      },
    );
  }
}
