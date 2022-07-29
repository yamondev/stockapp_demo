// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_envoye_valideur_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateEnvoyeValideurRecord> _$dateEnvoyeValideurRecordSerializer =
    new _$DateEnvoyeValideurRecordSerializer();

class _$DateEnvoyeValideurRecordSerializer
    implements StructuredSerializer<DateEnvoyeValideurRecord> {
  @override
  final Iterable<Type> types = const [
    DateEnvoyeValideurRecord,
    _$DateEnvoyeValideurRecord
  ];
  @override
  final String wireName = 'DateEnvoyeValideurRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DateEnvoyeValideurRecord object,
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
    value = object.valideur;
    if (value != null) {
      result
        ..add('valideur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.bonValide;
    if (value != null) {
      result
        ..add('bonValide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.coutValide;
    if (value != null) {
      result
        ..add('coutValide')
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
  DateEnvoyeValideurRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateEnvoyeValideurRecordBuilder();

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
        case 'valideur':
          result.valideur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'bonValide':
          result.bonValide = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'coutValide':
          result.coutValide = serializers.deserialize(value,
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

class _$DateEnvoyeValideurRecord extends DateEnvoyeValideurRecord {
  @override
  final String date;
  @override
  final DocumentReference<Object> valideur;
  @override
  final double bonValide;
  @override
  final double coutValide;
  @override
  final String nature;
  @override
  final DateTime dateFiltre;
  @override
  final DocumentReference<Object> reference;

  factory _$DateEnvoyeValideurRecord(
          [void Function(DateEnvoyeValideurRecordBuilder) updates]) =>
      (new DateEnvoyeValideurRecordBuilder()..update(updates)).build();

  _$DateEnvoyeValideurRecord._(
      {this.date,
      this.valideur,
      this.bonValide,
      this.coutValide,
      this.nature,
      this.dateFiltre,
      this.reference})
      : super._();

  @override
  DateEnvoyeValideurRecord rebuild(
          void Function(DateEnvoyeValideurRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateEnvoyeValideurRecordBuilder toBuilder() =>
      new DateEnvoyeValideurRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateEnvoyeValideurRecord &&
        date == other.date &&
        valideur == other.valideur &&
        bonValide == other.bonValide &&
        coutValide == other.coutValide &&
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
                    $jc($jc($jc(0, date.hashCode), valideur.hashCode),
                        bonValide.hashCode),
                    coutValide.hashCode),
                nature.hashCode),
            dateFiltre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateEnvoyeValideurRecord')
          ..add('date', date)
          ..add('valideur', valideur)
          ..add('bonValide', bonValide)
          ..add('coutValide', coutValide)
          ..add('nature', nature)
          ..add('dateFiltre', dateFiltre)
          ..add('reference', reference))
        .toString();
  }
}

class DateEnvoyeValideurRecordBuilder
    implements
        Builder<DateEnvoyeValideurRecord, DateEnvoyeValideurRecordBuilder> {
  _$DateEnvoyeValideurRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  DocumentReference<Object> _valideur;
  DocumentReference<Object> get valideur => _$this._valideur;
  set valideur(DocumentReference<Object> valideur) =>
      _$this._valideur = valideur;

  double _bonValide;
  double get bonValide => _$this._bonValide;
  set bonValide(double bonValide) => _$this._bonValide = bonValide;

  double _coutValide;
  double get coutValide => _$this._coutValide;
  set coutValide(double coutValide) => _$this._coutValide = coutValide;

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

  DateEnvoyeValideurRecordBuilder() {
    DateEnvoyeValideurRecord._initializeBuilder(this);
  }

  DateEnvoyeValideurRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _valideur = $v.valideur;
      _bonValide = $v.bonValide;
      _coutValide = $v.coutValide;
      _nature = $v.nature;
      _dateFiltre = $v.dateFiltre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateEnvoyeValideurRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateEnvoyeValideurRecord;
  }

  @override
  void update(void Function(DateEnvoyeValideurRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateEnvoyeValideurRecord build() {
    final _$result = _$v ??
        new _$DateEnvoyeValideurRecord._(
            date: date,
            valideur: valideur,
            bonValide: bonValide,
            coutValide: coutValide,
            nature: nature,
            dateFiltre: dateFiltre,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
