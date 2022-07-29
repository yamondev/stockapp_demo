// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_rejete_valideur_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateRejeteValideurRecord> _$dateRejeteValideurRecordSerializer =
    new _$DateRejeteValideurRecordSerializer();

class _$DateRejeteValideurRecordSerializer
    implements StructuredSerializer<DateRejeteValideurRecord> {
  @override
  final Iterable<Type> types = const [
    DateRejeteValideurRecord,
    _$DateRejeteValideurRecord
  ];
  @override
  final String wireName = 'DateRejeteValideurRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DateRejeteValideurRecord object,
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
    value = object.rejeteur;
    if (value != null) {
      result
        ..add('rejeteur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.bonRejete;
    if (value != null) {
      result
        ..add('bonRejete')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.coutRejete;
    if (value != null) {
      result
        ..add('coutRejete')
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
  DateRejeteValideurRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateRejeteValideurRecordBuilder();

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
        case 'rejeteur':
          result.rejeteur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'bonRejete':
          result.bonRejete = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'coutRejete':
          result.coutRejete = serializers.deserialize(value,
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

class _$DateRejeteValideurRecord extends DateRejeteValideurRecord {
  @override
  final String date;
  @override
  final DocumentReference<Object> rejeteur;
  @override
  final double bonRejete;
  @override
  final double coutRejete;
  @override
  final String nature;
  @override
  final DateTime dateFiltre;
  @override
  final DocumentReference<Object> reference;

  factory _$DateRejeteValideurRecord(
          [void Function(DateRejeteValideurRecordBuilder) updates]) =>
      (new DateRejeteValideurRecordBuilder()..update(updates)).build();

  _$DateRejeteValideurRecord._(
      {this.date,
      this.rejeteur,
      this.bonRejete,
      this.coutRejete,
      this.nature,
      this.dateFiltre,
      this.reference})
      : super._();

  @override
  DateRejeteValideurRecord rebuild(
          void Function(DateRejeteValideurRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateRejeteValideurRecordBuilder toBuilder() =>
      new DateRejeteValideurRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateRejeteValideurRecord &&
        date == other.date &&
        rejeteur == other.rejeteur &&
        bonRejete == other.bonRejete &&
        coutRejete == other.coutRejete &&
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
                    $jc($jc($jc(0, date.hashCode), rejeteur.hashCode),
                        bonRejete.hashCode),
                    coutRejete.hashCode),
                nature.hashCode),
            dateFiltre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateRejeteValideurRecord')
          ..add('date', date)
          ..add('rejeteur', rejeteur)
          ..add('bonRejete', bonRejete)
          ..add('coutRejete', coutRejete)
          ..add('nature', nature)
          ..add('dateFiltre', dateFiltre)
          ..add('reference', reference))
        .toString();
  }
}

class DateRejeteValideurRecordBuilder
    implements
        Builder<DateRejeteValideurRecord, DateRejeteValideurRecordBuilder> {
  _$DateRejeteValideurRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  DocumentReference<Object> _rejeteur;
  DocumentReference<Object> get rejeteur => _$this._rejeteur;
  set rejeteur(DocumentReference<Object> rejeteur) =>
      _$this._rejeteur = rejeteur;

  double _bonRejete;
  double get bonRejete => _$this._bonRejete;
  set bonRejete(double bonRejete) => _$this._bonRejete = bonRejete;

  double _coutRejete;
  double get coutRejete => _$this._coutRejete;
  set coutRejete(double coutRejete) => _$this._coutRejete = coutRejete;

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

  DateRejeteValideurRecordBuilder() {
    DateRejeteValideurRecord._initializeBuilder(this);
  }

  DateRejeteValideurRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _rejeteur = $v.rejeteur;
      _bonRejete = $v.bonRejete;
      _coutRejete = $v.coutRejete;
      _nature = $v.nature;
      _dateFiltre = $v.dateFiltre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateRejeteValideurRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateRejeteValideurRecord;
  }

  @override
  void update(void Function(DateRejeteValideurRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateRejeteValideurRecord build() {
    final _$result = _$v ??
        new _$DateRejeteValideurRecord._(
            date: date,
            rejeteur: rejeteur,
            bonRejete: bonRejete,
            coutRejete: coutRejete,
            nature: nature,
            dateFiltre: dateFiltre,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
