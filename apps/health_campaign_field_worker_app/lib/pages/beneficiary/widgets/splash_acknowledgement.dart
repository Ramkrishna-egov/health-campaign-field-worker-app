import 'dart:async';

import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../blocs/household_overview/household_overview.dart';

import '../../../router/app_router.dart';
import '../../../utils/i18_key_constants.dart' as i18;
import '../../../widgets/localized.dart';

class SplashAcknowledgementPage extends LocalizedStatefulWidget {
  final bool? enableBackToSearch;
  const SplashAcknowledgementPage({
    super.key,
    super.appLocalizations,
    this.enableBackToSearch,
  });

  @override
  State<SplashAcknowledgementPage> createState() =>
      _SplashAcknowledgementPageState();
}

class _SplashAcknowledgementPageState
    extends LocalizedState<SplashAcknowledgementPage> {
  @override
  void initState() {
    super.initState();
    if (widget.enableBackToSearch == false) {
      Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          try {
            context.router.push(DoseAdministeredRoute());
          } catch (e) {
            rethrow;
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DigitAcknowledgement.success(
        action: () {
          context.router.pop();
        },
        secondaryAction: () {
          final wrapper = context
              .read<HouseholdOverviewBloc>()
              .state
              .householdMemberWrapper;

          context.router.popAndPush(
            BeneficiaryWrapperRoute(wrapper: wrapper),
          );
        },
        enableViewHousehold: true,
        secondaryLabel: localizations.translate(
          i18.householdDetails.viewHouseHoldDetailsAction,
        ),
        enableBackToSearch: widget.enableBackToSearch ?? true,
        actionLabel:
            localizations.translate(i18.acknowledgementSuccess.actionLabelText),
        description: localizations.translate(
          i18.acknowledgementSuccess.acknowledgementDescriptionText,
        ),
        label: localizations
            .translate(i18.acknowledgementSuccess.acknowledgementLabelText),
      ),
    );
  }
}
