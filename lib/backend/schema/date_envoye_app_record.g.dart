// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_envoye_app_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateEnvoyeAppRecord> _$dateEnvoyeAppRecordSerializer =
    new _$DateEnvoyeAppRecordSerializer();

class _$DateEnvoyeAppRecordSerializer
    implements StructuredSerializer<DateEnvoyeAppRecord> {
  @override
  final Iterable<Type> types = const [
    DateEnvoyeAppRecord,
    _$DateEnvoyeAppRecord
  ];
  @override
  final String wireName = 'DateEnvoyeAppRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DateEnvoyeAppRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.demandeur;
    if (value != null) {
      result
        ..add('demandeur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.bonCree;
    if (value != null) {
      result
        ..add('bonCree')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.coutCree;
    if (value != null) {
      result
        ..add('coutCree')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateFiltre;
    if (value != null) {
      result
        ..add('dateFiltre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  DateEnvoyeAppRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateEnvoyeAppRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'demandeur':
          result.demandeur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'bonCree':
          result.bonCree = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'coutCree':
          result.coutCree = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateFiltre':
          result.dateFiltre = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$DateEnvoyeAppRecord extends DateEnvoyeAppRecord {
  @override
  final String date;
  @override
  final DocumentReference<Object> demandeur;
  @override
  final double bonCree;
  @override
  final double coutCree;
  @override
  final String type;
  @override
  final DateTime dateFiltre;
  @override
  final int index;
  @override
  final DocumentReference<Object> reference;

  factory _$DateEnvoyeAppRecord(
          [void Function(DateEnvoyeAppRecordBuilder) updates]) =>
      (new DateEnvoyeAppRecordBuilder()..update(updates)).build();

  _$DateEnvoyeAppRecord._(
      {this.date,
      this.demandeur,
      this.bonCree,
      this.coutCree,
      this.type,
      this.dateFiltre,
      this.index,
      this.reference})
      : super._();

  @override
  DateEnvoyeAppRecord rebuild(
          void Function(DateEnvoyeAppRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateEnvoyeAppRecordBuilder toBuilder() =>
      new DateEnvoyeAppRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateEnvoyeAppRecord &&
        date == other.date &&
        demandeur == other.demandeur &&
        bonCree == other.bonCree &&
        coutCree == other.coutCree &&
        type == other.type &&
        dateFiltre == other.dateFiltre &&
        index == other.index &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, date.hashCode), demandeur.hashCode),
                            bonCree.hashCode),
                        coutCree.hashCode),
                    type.hashCode),
                dateFiltre.hashCode),
            index.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateEnvoyeAppRecord')
          ..add('date', date)
          ..add('demandeur', demandeur)
          ..add('bonCree', bonCree)
          ..add('coutCree', coutCree)
          ..add('type', type)
          ..add('dateFiltre', dateFiltre)
          ..add('index', index)
          ..add('reference', reference))
        .toString();
  }
}

class DateEnvoyeAppRecordBuilder
    implements Builder<DateEnvoyeAppRecord, DateEnvoyeAppRecordBuilder> {
  _$DateEnvoyeAppRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  DocumentReference<Object> _demandeur;
  DocumentReference<Object> get demandeur => _$this._demandeur;
  set demandeur(DocumentReference<Object> demandeur) =>
      _$this._demandeur = demandeur;

  double _bonCree;
  double get bonCree => _$this._bonCree;
  set bonCree(double bonCree) => _$this._bonCree = bonCree;

  double _coutCree;
  double get coutCree => _$this._coutCree;
  set coutCree(double coutCree) => _$this._coutCree = coutCree;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DateTime _dateFiltre;
  DateTime get dateFiltre => _$this._dateFiltre;
  set dateFiltre(DateTime dateFiltre) => _$this._dateFiltre = dateFiltre;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DateEnvoyeAppRecordBuilder() {
    DateEnvoyeAppRecord._initializeBuilder(this);
  }

  DateEnvoyeAppRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _demandeur = $v.demandeur;
      _bonCree = $v.bonCree;
      _coutCree = $v.coutCree;
      _type = $v.type;
      _dateFiltre = $v.dateFiltre;
      _index = $v.index;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateEnvoyeAppRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateEnvoyeAppRecord;
  }

  @override
  void update(void Function(DateEnvoyeAppRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateEnvoyeAppRecord build() {
    final _$result = _$v ??
        new _$DateEnvoyeAppRecord._(
            date: date,
            demandeur: demandeur,
            bonCree: bonCree,
            coutCree: coutCree,
            type: type,
            dateFiltre: dateFiltre,
            index: index,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
