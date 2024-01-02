// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absent_attendee.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAbsentAttendeeCollection on Isar {
  IsarCollection<AbsentAttendee> get absentAttendees => this.collection();
}

const AbsentAttendeeSchema = CollectionSchema(
  name: r'AbsentAttendee',
  id: 3385487881449857,
  properties: {
    r'entryTime': PropertySchema(
      id: 0,
      name: r'entryTime',
      type: IsarType.long,
    ),
    r'eventEndDate': PropertySchema(
      id: 1,
      name: r'eventEndDate',
      type: IsarType.long,
    ),
    r'eventStartDate': PropertySchema(
      id: 2,
      name: r'eventStartDate',
      type: IsarType.long,
    ),
    r'exitTime': PropertySchema(
      id: 3,
      name: r'exitTime',
      type: IsarType.long,
    ),
    r'individualId': PropertySchema(
      id: 4,
      name: r'individualId',
      type: IsarType.string,
    ),
    r'registerId': PropertySchema(
      id: 5,
      name: r'registerId',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 6,
      name: r'status',
      type: IsarType.long,
    ),
    r'tenantId': PropertySchema(
      id: 7,
      name: r'tenantId',
      type: IsarType.string,
    )
  },
  estimateSize: _absentAttendeeEstimateSize,
  serialize: _absentAttendeeSerialize,
  deserialize: _absentAttendeeDeserialize,
  deserializeProp: _absentAttendeeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _absentAttendeeGetId,
  getLinks: _absentAttendeeGetLinks,
  attach: _absentAttendeeAttach,
  version: '3.1.0',
);

int _absentAttendeeEstimateSize(
  AbsentAttendee object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.individualId.length * 3;
  bytesCount += 3 + object.registerId.length * 3;
  bytesCount += 3 + object.tenantId.length * 3;
  return bytesCount;
}

void _absentAttendeeSerialize(
  AbsentAttendee object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.entryTime);
  writer.writeLong(offsets[1], object.eventEndDate);
  writer.writeLong(offsets[2], object.eventStartDate);
  writer.writeLong(offsets[3], object.exitTime);
  writer.writeString(offsets[4], object.individualId);
  writer.writeString(offsets[5], object.registerId);
  writer.writeLong(offsets[6], object.status);
  writer.writeString(offsets[7], object.tenantId);
}

AbsentAttendee _absentAttendeeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AbsentAttendee();
  object.entryTime = reader.readLong(offsets[0]);
  object.eventEndDate = reader.readLong(offsets[1]);
  object.eventStartDate = reader.readLong(offsets[2]);
  object.exitTime = reader.readLong(offsets[3]);
  object.id = id;
  object.individualId = reader.readString(offsets[4]);
  object.registerId = reader.readString(offsets[5]);
  object.status = reader.readLong(offsets[6]);
  object.tenantId = reader.readString(offsets[7]);
  return object;
}

P _absentAttendeeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _absentAttendeeGetId(AbsentAttendee object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _absentAttendeeGetLinks(AbsentAttendee object) {
  return [];
}

void _absentAttendeeAttach(
    IsarCollection<dynamic> col, Id id, AbsentAttendee object) {
  object.id = id;
}

extension AbsentAttendeeQueryWhereSort
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QWhere> {
  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AbsentAttendeeQueryWhere
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QWhereClause> {
  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AbsentAttendeeQueryFilter
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QFilterCondition> {
  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      entryTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entryTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      entryTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entryTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      entryTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entryTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      entryTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entryTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventEndDateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventEndDateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventEndDateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventEndDateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventEndDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventStartDateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventStartDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventStartDateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventStartDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventStartDateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventStartDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      eventStartDateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventStartDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      exitTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exitTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      exitTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exitTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      exitTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exitTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      exitTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exitTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'individualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'individualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'individualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'individualId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'individualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'individualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'individualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'individualId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'individualId',
        value: '',
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      individualIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'individualId',
        value: '',
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'registerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'registerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registerId',
        value: '',
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      registerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'registerId',
        value: '',
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      statusEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      statusGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      statusLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      statusBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tenantId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tenantId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tenantId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tenantId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tenantId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tenantId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tenantId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tenantId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tenantId',
        value: '',
      ));
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterFilterCondition>
      tenantIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tenantId',
        value: '',
      ));
    });
  }
}

extension AbsentAttendeeQueryObject
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QFilterCondition> {}

extension AbsentAttendeeQueryLinks
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QFilterCondition> {}

extension AbsentAttendeeQuerySortBy
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QSortBy> {
  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> sortByEntryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryTime', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByEntryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryTime', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByEventEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDate', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByEventEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDate', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByEventStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDate', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByEventStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDate', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> sortByExitTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitTime', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByExitTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitTime', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByIndividualId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'individualId', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByIndividualIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'individualId', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByRegisterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByRegisterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> sortByTenantId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenantId', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      sortByTenantIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenantId', Sort.desc);
    });
  }
}

extension AbsentAttendeeQuerySortThenBy
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QSortThenBy> {
  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> thenByEntryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryTime', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByEntryTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryTime', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByEventEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDate', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByEventEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDate', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByEventStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDate', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByEventStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDate', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> thenByExitTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitTime', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByExitTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitTime', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByIndividualId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'individualId', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByIndividualIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'individualId', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByRegisterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByRegisterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registerId', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy> thenByTenantId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenantId', Sort.asc);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QAfterSortBy>
      thenByTenantIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tenantId', Sort.desc);
    });
  }
}

extension AbsentAttendeeQueryWhereDistinct
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct> {
  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct>
      distinctByEntryTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entryTime');
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct>
      distinctByEventEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventEndDate');
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct>
      distinctByEventStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventStartDate');
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct> distinctByExitTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exitTime');
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct>
      distinctByIndividualId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'individualId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct> distinctByRegisterId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<AbsentAttendee, AbsentAttendee, QDistinct> distinctByTenantId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tenantId', caseSensitive: caseSensitive);
    });
  }
}

extension AbsentAttendeeQueryProperty
    on QueryBuilder<AbsentAttendee, AbsentAttendee, QQueryProperty> {
  QueryBuilder<AbsentAttendee, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AbsentAttendee, int, QQueryOperations> entryTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entryTime');
    });
  }

  QueryBuilder<AbsentAttendee, int, QQueryOperations> eventEndDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventEndDate');
    });
  }

  QueryBuilder<AbsentAttendee, int, QQueryOperations> eventStartDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventStartDate');
    });
  }

  QueryBuilder<AbsentAttendee, int, QQueryOperations> exitTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exitTime');
    });
  }

  QueryBuilder<AbsentAttendee, String, QQueryOperations>
      individualIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'individualId');
    });
  }

  QueryBuilder<AbsentAttendee, String, QQueryOperations> registerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registerId');
    });
  }

  QueryBuilder<AbsentAttendee, int, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<AbsentAttendee, String, QQueryOperations> tenantIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tenantId');
    });
  }
}
