// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'beneficiary_type.dart';

class BeneficiaryTypeMapper extends EnumMapper<BeneficiaryType> {
  BeneficiaryTypeMapper._();

  static BeneficiaryTypeMapper? _instance;
  static BeneficiaryTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BeneficiaryTypeMapper._());
    }
    return _instance!;
  }

  static BeneficiaryType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  BeneficiaryType decode(dynamic value) {
    switch (value) {
      case "INDIVIDUAL":
        return BeneficiaryType.individual;
      case "HOUSEHOLD":
        return BeneficiaryType.household;
      case "PRODUCT":
        return BeneficiaryType.product;
      case "3-11MONTH":
        return BeneficiaryType.individual1;
      case "12-59MONTH":
        return BeneficiaryType.individual2;
      case "SPAQ1":
        return BeneficiaryType.spaq1;
      case "SPAQ2":
        return BeneficiaryType.spaq2;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(BeneficiaryType self) {
    switch (self) {
      case BeneficiaryType.individual:
        return "INDIVIDUAL";
      case BeneficiaryType.household:
        return "HOUSEHOLD";
      case BeneficiaryType.product:
        return "PRODUCT";
      case BeneficiaryType.individual1:
        return "3-11MONTH";
      case BeneficiaryType.individual2:
        return "12-59MONTH";
      case BeneficiaryType.spaq1:
        return "SPAQ1";
      case BeneficiaryType.spaq2:
        return "SPAQ2";
    }
  }
}

extension BeneficiaryTypeMapperExtension on BeneficiaryType {
  dynamic toValue() {
    BeneficiaryTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<BeneficiaryType>(this);
  }
}
