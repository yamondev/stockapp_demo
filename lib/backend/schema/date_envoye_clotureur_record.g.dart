// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_envoye_clotureur_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateEnvoyeClotureurRecord> _$dateEnvoyeClotureurRecordSerializer =
    new _$DateEnvoyeClotureurRecordSerializer();

class _$DateEnvoyeClotureurRecordSerializer
    implements StructuredSerializer<DateEnvoyeClotureurRecord> {
  @override
  final Iterable<Type> types = const [
    DateEnvoyeClotureurRecord,
    _$DateEnvoyeClotureurRecord
  ];
  @override
  final String wireName = 'DateEnvoyeClotureurRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DateEnvoyeClotureurRecord object,
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
    value = object.clotureur;
    if (value != null) {
      result
        ..add('clotureur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.bonCloture;
    if (value != null) {
      result
        ..add('bonCloture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.coutCloture;
    if (value != null) {
      result
        ..add('coutCloture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.nomClotureur;
    if (value != null) {
      result
        ..add('nomClotureur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nature;
    if (value != null) {
      result
        ..add('nature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  DateEnvoyeClotureurRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateEnvoyeClotureurRecordBuilder();

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
        case 'clotureur':
          result.clotureur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'bonCloture':
          result.bonCloture = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'coutCloture':
          result.coutCloture = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nomClotureur':
          result.nomClotureur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nature':
          result.nature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
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

class _$DateEnvoyeClotureurRecord extends DateEnvoyeClotureurRecord {
  @override
  final String date;
  @override
  final DocumentReference<Object> clotureur;
  @override
  final double bonCloture;
  @override
  final double coutCloture;
  @override
  final String nomClotureur;
  @override
  final String nature;
  @override
  final String type;
  @override
  final DateTime dateFiltre;
  @override
  final DocumentReference<Object> reference;

  factory _$DateEnvoyeClotureurRecord(
          [void Function(DateEnvoyeClotureurRecordBuilder) updates]) =>
      (new DateEnvoyeClotureurRecordBuilder()..update(updates)).build();

  _$DateEnvoyeClotureurRecord._(
      {this.date,
      this.clotureur,
      this.bonCloture,
      this.coutCloture,
      this.nomClotureur,
      this.nature,
      this.type,
      this.dateFiltre,
      this.reference})
      : super._();

  @override
  DateEnvoyeClotureurRecord rebuild(
          void Function(DateEnvoyeClotureurRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateEnvoyeClotureurRecordBuilder toBuilder() =>
      new DateEnvoyeClotureurRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateEnvoyeClotureurRecord &&
        date == other.date &&
        clotureur == other.clotureur &&
        bonCloture == other.bonCloture &&
        coutCloture == other.coutCloture &&
        nomClotureur == other.nomClotureur &&
        nature == other.nature &&
        type == other.type &&
        dateFiltre == other.dateFiltre &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, date.hashCode), clotureur.hashCode),
                                bonCloture.hashCode),
                            coutCloture.hashCode),
                        nomClotureur.hashCode),
                    nature.hashCode),
                type.hashCode),
            dateFiltre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateEnvoyeClotureurRecord')
          ..add('date', date)
          ..add('clotureur', clotureur)
          ..add('bonCloture', bonCloture)
          ..add('coutCloture', coutCloture)
          ..add('nomClotureur', nomClotureur)
          ..add('nature', nature)
          ..add('type', type)
          ..add('dateFiltre', dateFiltre)
          ..add('reference', reference))
        .toString();
  }
}

class DateEnvoyeClotureurRecordBuilder
    implements
        Builder<DateEnvoyeClotureurRecord, DateEnvoyeClotureurRecordBuilder> {
  _$DateEnvoyeClotureurRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  DocumentReference<Object> _clotureur;
  DocumentReference<Object> get clotureur => _$this._clotureur;
  set clotureur(DocumentReference<Object> clotureur) =>
      _$this._clotureur = clotureur;

  double _bonCloture;
  double get bonCloture => _$this._bonCloture;
  set bonCloture(double bonCloture) => _$this._bonCloture = bonCloture;

  double _coutCloture;
  double get coutCloture => _$this._coutCloture;
  set coutCloture(double coutCloture) => _$this._coutCloture = coutCloture;

  String _nomClotureur;
  String get nomClotureur => _$this._nomClotureur;
  set nomClotureur(String nomClotureur) => _$this._nomClotureur = nomClotureur;

  String _nature;
  String get nature => _$this._nature;
  set nature(String nature) => _$this._nature = nature;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DateTime _dateFiltre;
  DateTime get dateFiltre => _$this._dateFiltre;
  set dateFiltre(DateTime dateFiltre) => _$this._dateFiltre = dateFiltre;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DateEnvoyeClotureurRecordBuilder() {
    DateEnvoyeClotureurRecord._initializeBuilder(this);
  }

  DateEnvoyeClotureurRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _clotureur = $v.clotureur;
      _bonCloture = $v.bonCloture;
      _coutCloture = $v.coutCloture;
      _nomClotureur = $v.nomClotureur;
      _nature = $v.nature;
      _type = $v.type;
      _dateFiltre = $v.dateFiltre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateEnvoyeClotureurRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateEnvoyeClotureurRecord;
  }

  @override
  void update(void Function(DateEnvoyeClotureurRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateEnvoyeClotureurRecord build() {
    final _$result = _$v ??
        new _$DateEnvoyeClotureurRecord._(
            date: date,
            clotureur: clotureur,
            bonCloture: bonCloture,
            coutCloture: coutCloture,
            nomClotureur: nomClotureur,
            nature: nature,
            type: type,
            dateFiltre: dateFiltre,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
