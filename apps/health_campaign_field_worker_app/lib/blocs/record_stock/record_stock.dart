// GENERATED using mason_cli
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/data_model.dart';
import '../../utils/environment_config.dart';
import '../../utils/typedefs.dart';

part 'record_stock.freezed.dart';

typedef RecordStockEmitter = Emitter<RecordStockState>;

class RecordStockBloc extends Bloc<RecordStockEvent, RecordStockState> {
  final StockDataRepository stockRepository;

  RecordStockBloc(
    super.initialState, {
    required this.stockRepository,
  }) {
    on(_handleSaveWarehouseDetails);
    on(_handleSaveStockDetails);
    on(_handleCreateStockEntry);
  }

  FutureOr<void> _handleSaveWarehouseDetails(
    RecordStockSaveWarehouseDetailsEvent event,
    RecordStockEmitter emit,
  ) async {
    state.maybeMap(
      orElse: () {
        throw const InvalidRecordStockStateException();
      },
      create: (value) {
        emit(
          value.copyWith(
            dateOfRecord: event.dateOfRecord,
            facilityModel: event.facilityModel,
          ),
        );
      },
    );
  }

  FutureOr<void> _handleSaveStockDetails(
    RecordStockSaveStockDetailsEvent event,
    RecordStockEmitter emit,
  ) async {
    state.maybeMap(
      orElse: () {
        throw const InvalidRecordStockStateException();
      },
      create: (value) {
        emit(value.copyWith(stockModel: event.stockModel));
      },
    );
  }

  FutureOr<void> _handleCreateStockEntry(
    RecordStockCreateStockEntryEvent event,
    RecordStockEmitter emit,
  ) async {
    await state.maybeMap(
      orElse: () {
        throw const InvalidRecordStockStateException();
      },
      create: (value) async {
        final dateOfRecord = value.dateOfRecord;
        final facilityModel = value.facilityModel;
        final stockModel = value.stockModel;

        if (dateOfRecord == null) {
          throw const InvalidRecordStockStateException(
            'Date of record cannot be null',
          );
        } else if (facilityModel == null) {
          throw const InvalidRecordStockStateException(
            'Facility cannot be null',
          );
        } else if (stockModel == null) {
          throw const InvalidRecordStockStateException(
            'Facility cannot be null',
          );
        }

        emit(value.copyWith(loading: true));

        try {
          await stockRepository.create(
            stockModel.copyWith(
              facilityId: facilityModel.id,
              rowVersion: 1,
              tenantId: envConfig.variables.tenantId,
            ),
          );

          emit(
            RecordStockPersistedState(
              entryType: value.entryType,
              projectId: value.projectId,
              stockModel: value.stockModel,
              facilityModel: value.facilityModel,
              dateOfRecord: value.dateOfRecord,
            ),
          );
        } catch (error) {
          emit(value.copyWith(loading: false));
          rethrow;
        }
      },
    );
  }
}

@freezed
class RecordStockEvent with _$RecordStockEvent {
  const factory RecordStockEvent.saveWarehouseDetails({
    required DateTime dateOfRecord,
    required FacilityModel facilityModel,
  }) = RecordStockSaveWarehouseDetailsEvent;

  const factory RecordStockEvent.saveStockDetails({
    required StockModel stockModel,
  }) = RecordStockSaveStockDetailsEvent;

  const factory RecordStockEvent.createStockEntry() =
      RecordStockCreateStockEntryEvent;
}

@freezed
class RecordStockState with _$RecordStockState {
  const factory RecordStockState.create({
    required StockRecordEntryType entryType,
    @Default(false) bool loading,
    required String projectId,
    DateTime? dateOfRecord,
    FacilityModel? facilityModel,
    StockModel? stockModel,
  }) = RecordStockCreateState;

  const factory RecordStockState.persisted({
    required StockRecordEntryType entryType,
    required String projectId,
    DateTime? dateOfRecord,
    FacilityModel? facilityModel,
    StockModel? stockModel,
  }) = RecordStockPersistedState;
}

class InvalidRecordStockStateException implements Exception {
  final String? message;

  const InvalidRecordStockStateException([this.message]);
}

enum StockRecordEntryType {
  receipt,
  dispatch,
  returned,
  loss,
  damaged,
}
