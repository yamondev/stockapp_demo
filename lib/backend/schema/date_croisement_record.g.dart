// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_croisement_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateCroisementRecord> _$dateCroisementRecordSerializer =
    new _$DateCroisementRecordSerializer();

class _$DateCroisementRecordSerializer
    implements StructuredSerializer<DateCroisementRecord> {
  @override
  final Iterable<Type> types = const [
    DateCroisementRecord,
    _$DateCroisementRecord
  ];
  @override
  final String wireName = 'DateCroisementRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DateCroisementRecord object,
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
    value = object.coutCommande;
    if (value != null) {
      result
        ..add('coutCommande')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.coutApprovisio;
    if (value != null) {
      result
        ..add('coutApprovisio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.coutDifference;
    if (value != null) {
      result
        ..add('coutDifference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dateFiltre;
    if (value != null) {
      result
        ..add('dateFiltre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  DateCroisementRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateCroisementRecordBuilder();

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
        case 'coutCommande':
          result.coutCommande = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'coutApprovisio':
          result.coutApprovisio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'coutDifference':
          result.coutDifference = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dateFiltre':
          result.dateFiltre = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$DateCroisementRecord extends DateCroisementRecord {
  @override
  final String date;
  @override
  final double coutCommande;
  @override
  final double coutApprovisio;
  @override
  final double coutDifference;
  @override
  final DateTime dateFiltre;
  @override
  final DocumentReference<Object> reference;

  factory _$DateCroisementRecord(
          [void Function(DateCroisementRecordBuilder) updates]) =>
      (new DateCroisementRecordBuilder()..update(updates)).build();

  _$DateCroisementRecord._(
      {this.date,
      this.coutCommande,
      this.coutApprovisio,
      this.coutDifference,
      this.dateFiltre,
      this.reference})
      : super._();

  @override
  DateCroisementRecord rebuild(
          void Function(DateCroisementRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateCroisementRecordBuilder toBuilder() =>
      new DateCroisementRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateCroisementRecord &&
        date == other.date &&
        coutCommande == other.coutCommande &&
        coutApprovisio == other.coutApprovisio &&
        coutDifference == other.coutDifference &&
        dateFiltre == other.dateFiltre &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, date.hashCode), coutCommande.hashCode),
                    coutApprovisio.hashCode),
                coutDifference.hashCode),
            dateFiltre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateCroisementRecord')
          ..add('date', date)
          ..add('coutCommande', coutCommande)
          ..add('coutApprovisio', coutApprovisio)
          ..add('coutDifference', coutDifference)
          ..add('dateFiltre', dateFiltre)
          ..add('reference', reference))
        .toString();
  }
}

class DateCroisementRecordBuilder
    implements Builder<DateCroisementRecord, DateCroisementRecordBuilder> {
  _$DateCroisementRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  double _coutCommande;
  double get coutCommande => _$this._coutCommande;
  set coutCommande(double coutCommande) => _$this._coutCommande = coutCommande;

  double _coutApprovisio;
  double get coutApprovisio => _$this._coutApprovisio;
  set coutApprovisio(double coutApprovisio) =>
      _$this._coutApprovisio = coutApprovisio;

  double _coutDifference;
  double get coutDifference => _$this._coutDifference;
  set coutDifference(double coutDifference) =>
      _$this._coutDifference = coutDifference;

  DateTime _dateFiltre;
  DateTime get dateFiltre => _$this._dateFiltre;
  set dateFiltre(DateTime dateFiltre) => _$this._dateFiltre = dateFiltre;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DateCroisementRecordBuilder() {
    DateCroisementRecord._initializeBuilder(this);
  }

  DateCroisementRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _coutCommande = $v.coutCommande;
      _coutApprovisio = $v.coutApprovisio;
      _coutDifference = $v.coutDifference;
      _dateFiltre = $v.dateFiltre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateCroisementRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateCroisementRecord;
  }

  @override
  void update(void Function(DateCroisementRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateCroisementRecord build() {
    final _$result = _$v ??
        new _$DateCroisementRecord._(
            date: date,
            coutCommande: coutCommande,
            coutApprovisio: coutApprovisio,
            coutDifference: coutDifference,
            dateFiltre: dateFiltre,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
