import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import '../../../utils/i18_key_constants.dart' as i18;
import '../../blocs/record_stock/record_stock.dart';
import '../../router/app_router.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';

class ManageStocksPage extends LocalizedStatefulWidget {
  const ManageStocksPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<ManageStocksPage> createState() => _ManageStocksPageState();
}

class _ManageStocksPageState extends LocalizedState<ManageStocksPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ScrollableContent(
        header: Column(children: const [
          BackNavigationHelpHeaderWidget(),
        ]),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    localizations.translate(i18.manageStock.label),
                    style: theme.textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(children: [
                DigitListView(
                  title: localizations
                      .translate(i18.manageStock.recordstockReceiptLabel),
                  description: localizations
                      .translate(i18.manageStock.recordstockReceiptDescription),
                  prefixIcon: Icons.login,
                  sufixIcon: Icons.arrow_circle_right,
                  onPressed: () => context.router.push(
                    RecordStockWrapperRoute(
                      type: StockRecordEntryType.receipt,
                    ),
                  ),
                ),
                DigitListView(
                  title: localizations
                      .translate(i18.manageStock.recordstockIssuedLabel),
                  description: localizations
                      .translate(i18.manageStock.recordstockIssuedtDescription),
                  prefixIcon: Icons.logout,
                  sufixIcon: Icons.arrow_circle_right,
                  onPressed: () => context.router.push(
                    RecordStockWrapperRoute(
                      type: StockRecordEntryType.dispatch,
                    ),
                  ),
                ),
                DigitListView(
                  title: localizations
                      .translate(i18.manageStock.recordstockReturnedLabel),
                  description: localizations.translate(
                    i18.manageStock.recordstockReturnedtDescription,
                  ),
                  prefixIcon: Icons.settings_backup_restore,
                  sufixIcon: Icons.arrow_circle_right,
                  onPressed: () => context.router.push(
                    RecordStockWrapperRoute(
                      type: StockRecordEntryType.returned,
                    ),
                  ),
                ),
                DigitListView(
                  title: localizations
                      .translate(i18.manageStock.recordstockDamagedLabel),
                  description: localizations.translate(
                    i18.manageStock.recordstockDamagedDescription,
                  ),
                  prefixIcon: Icons.store,
                  sufixIcon: Icons.arrow_circle_right,
                  onPressed: () => context.router.push(
                    RecordStockWrapperRoute(
                      type: StockRecordEntryType.damaged,
                    ),
                  ),
                ),
                DigitListView(
                  title: localizations
                      .translate(i18.manageStock.recordstockLossLabel),
                  description: localizations.translate(
                    i18.manageStock.recordstockDamagedDescription,
                  ),
                  prefixIcon: Icons.store,
                  sufixIcon: Icons.arrow_circle_right,
                  onPressed: () => context.router.push(
                    RecordStockWrapperRoute(
                      type: StockRecordEntryType.loss,
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
}
