// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_en_attente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateEnAttenteRecord> _$dateEnAttenteRecordSerializer =
    new _$DateEnAttenteRecordSerializer();

class _$DateEnAttenteRecordSerializer
    implements StructuredSerializer<DateEnAttenteRecord> {
  @override
  final Iterable<Type> types = const [
    DateEnAttenteRecord,
    _$DateEnAttenteRecord
  ];
  @override
  final String wireName = 'DateEnAttenteRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DateEnAttenteRecord object,
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
  DateEnAttenteRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateEnAttenteRecordBuilder();

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

class _$DateEnAttenteRecord extends DateEnAttenteRecord {
  @override
  final String date;
  @override
  final DocumentReference<Object> demandeur;
  @override
  final String nature;
  @override
  final String type;
  @override
  final DateTime dateFiltre;
  @override
  final DocumentReference<Object> reference;

  factory _$DateEnAttenteRecord(
          [void Function(DateEnAttenteRecordBuilder) updates]) =>
      (new DateEnAttenteRecordBuilder()..update(updates)).build();

  _$DateEnAttenteRecord._(
      {this.date,
      this.demandeur,
      this.nature,
      this.type,
      this.dateFiltre,
      this.reference})
      : super._();

  @override
  DateEnAttenteRecord rebuild(
          void Function(DateEnAttenteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateEnAttenteRecordBuilder toBuilder() =>
      new DateEnAttenteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateEnAttenteRecord &&
        date == other.date &&
        demandeur == other.demandeur &&
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
                $jc($jc($jc(0, date.hashCode), demandeur.hashCode),
                    nature.hashCode),
                type.hashCode),
            dateFiltre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateEnAttenteRecord')
          ..add('date', date)
          ..add('demandeur', demandeur)
          ..add('nature', nature)
          ..add('type', type)
          ..add('dateFiltre', dateFiltre)
          ..add('reference', reference))
        .toString();
  }
}

class DateEnAttenteRecordBuilder
    implements Builder<DateEnAttenteRecord, DateEnAttenteRecordBuilder> {
  _$DateEnAttenteRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  DocumentReference<Object> _demandeur;
  DocumentReference<Object> get demandeur => _$this._demandeur;
  set demandeur(DocumentReference<Object> demandeur) =>
      _$this._demandeur = demandeur;

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

  DateEnAttenteRecordBuilder() {
    DateEnAttenteRecord._initializeBuilder(this);
  }

  DateEnAttenteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _demandeur = $v.demandeur;
      _nature = $v.nature;
      _type = $v.type;
      _dateFiltre = $v.dateFiltre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateEnAttenteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateEnAttenteRecord;
  }

  @override
  void update(void Function(DateEnAttenteRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DateEnAttenteRecord build() {
    final _$result = _$v ??
        new _$DateEnAttenteRecord._(
            date: date,
            demandeur: demandeur,
            nature: nature,
            type: type,
            dateFiltre: dateFiltre,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
