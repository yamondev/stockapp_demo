// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_en_traitement_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateEnTraitementRecord> _$dateEnTraitementRecordSerializer =
    new _$DateEnTraitementRecordSerializer();

class _$DateEnTraitementRecordSerializer
    implements StructuredSerializer<DateEnTraitementRecord> {
  @override
  final Iterable<Type> types = const [
    DateEnTraitementRecord,
    _$DateEnTraitementRecord
  ];
  @override
  final String wireName = 'DateEnTraitementRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DateEnTraitementRecord object,
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
    value = object.bonEncours;
    if (value != null) {
      result
        ..add('bonEncours')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.coutEncours;
    if (value != null) {
      result
        ..add('coutEncours')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.nature;
    if (value != null) {
      result
        ..add('nature')
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
  DateEnTraitementRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateEnTraitementRecordBuilder();

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
        case 'bonEncours':
          result.bonEncours = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'coutEncours':
          result.coutEncours = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nature':
          result.nature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$DateEnTraitementRecord extends DateEnTraitementRecord {
  @override
  final String date;
  @override
  final DocumentReference<Object> demandeur;
  @override
  final double bonEncours;
  @override
  final double coutEncours;
  @override
  final String nature;
  @override
  final DateTime dateFiltre;
  @override
  final DocumentReference<Object> reference;

  factory _$DateEnTraitementRecord(
          [void Function(DateEnTraitementRecordBuilder) updates]) =>
      (new DateEnTraitementRecordBuilder()..update(updates)).build();

  _$DateEnTraitementRecord._(
      {this.date,
      this.demandeur,
      this.bonEncours,
      this.coutEncours,
      this.nature,
      this.dateFiltre,
      this.reference})
      : super._();

  @override
  DateEnTraitementRecord rebuild(
          void Function(DateEnTraitementRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateEnTraitementRecordBuilder toBuilder() =>
      new DateEnTraitementRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateEnTraitementRecord &&
        date == other.date &&
        demandeur == other.demandeur &&
        bonEncours == other.bonEncours &&
        coutEncours == other.coutEncours &&
        nature == other.nature &&
        dateFiltre == other.dateFiltre &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, date.hashCode), demandeur.hashCode),
                        bonEncours.hashCode),
                    coutEncours.hashCode),
                nature.hashCode),
            dateFiltre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateEnTraitementRecord')
          ..add('date', date)
          ..add('demandeur', demandeur)
          ..add('bonEncours', bonEncours)
          ..add('coutEncours', coutEncours)
          ..add('nature', nature)
          ..add('dateFiltre', dateFiltre)
          ..add('reference', reference))
        .toString();
  }
}

class DateEnTraitementRecordBuilder
    implements Builder<DateEnTraitementRecord, DateEnTraitementRecordBuilder> {
  _$DateEnTraitementRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  DocumentReference<Object> _demandeur;
  DocumentReference<Object> get demandeur => _$this._demandeur;
  set demandeur(DocumentReference<Object> demandeur) =>
      _$this._demandeur = demandeur;

  double _bonEncours;
  double get bonEncours => _$this._bonEncours;
  set bonEncours(double bonEncours) => _$this._bonEncours = bonEncours;

  double _coutEncours;
  double get coutEncours => _$this._coutEncours;
  set coutEncours(double coutEncours) => _$this._coutEncours = coutEncours;

  String _nature;
  String get nature => _$this._nature;
  set nature(String nature) => _$this._nature = nature;

  DateTime _dateFiltre;
  DateTime get dateFiltre => _$this._dateFiltre;
  set dateFiltre(DateTime dateFiltre) => _$this._dateFiltre = dateFiltre;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DateEnTraitementRecordBuilder() {
    DateEnTraitementRecord._initializeBuilder(this);
  }

  DateEnTraitementRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _demandeur = $v.demandeur;
      _bonEncours = $v.bonEncours;
      _coutEncours = $v.coutEncours;
      _nature = $v.nature;
      _dateFiltre = $v.dateFiltre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateEnTraitementRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateEnTraitementRecord;
  }

  @override
  void update(void Function(DateEnTraitementRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateEnTraitementRecord build() {
    final _$result = _$v ??
        new _$DateEnTraitementRecord._(
            date: date,
            demandeur: demandeur,
            bonEncours: bonEncours,
            coutEncours: coutEncours,
            nature: nature,
            dateFiltre: dateFiltre,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
