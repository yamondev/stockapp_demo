// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bon_en_attente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BonEnAttenteRecord> _$bonEnAttenteRecordSerializer =
    new _$BonEnAttenteRecordSerializer();

class _$BonEnAttenteRecordSerializer
    implements StructuredSerializer<BonEnAttenteRecord> {
  @override
  final Iterable<Type> types = const [BonEnAttenteRecord, _$BonEnAttenteRecord];
  @override
  final String wireName = 'BonEnAttenteRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BonEnAttenteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statut;
    if (value != null) {
      result
        ..add('statut')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.priorite;
    if (value != null) {
      result
        ..add('priorite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listeArticles;
    if (value != null) {
      result
        ..add('liste_articles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.heure;
    if (value != null) {
      result
        ..add('heure')
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
  BonEnAttenteRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BonEnAttenteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statut':
          result.statut = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'priorite':
          result.priorite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'liste_articles':
          result.listeArticles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heure':
          result.heure = serializers.deserialize(value,
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

class _$BonEnAttenteRecord extends BonEnAttenteRecord {
  @override
  final String nom;
  @override
  final String code;
  @override
  final int statut;
  @override
  final String priorite;
  @override
  final BuiltList<DocumentReference<Object>> listeArticles;
  @override
  final String date;
  @override
  final String heure;
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

  factory _$BonEnAttenteRecord(
          [void Function(BonEnAttenteRecordBuilder) updates]) =>
      (new BonEnAttenteRecordBuilder()..update(updates)).build();

  _$BonEnAttenteRecord._(
      {this.nom,
      this.code,
      this.statut,
      this.priorite,
      this.listeArticles,
      this.date,
      this.heure,
      this.demandeur,
      this.nature,
      this.type,
      this.dateFiltre,
      this.reference})
      : super._();

  @override
  BonEnAttenteRecord rebuild(
          void Function(BonEnAttenteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BonEnAttenteRecordBuilder toBuilder() =>
      new BonEnAttenteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BonEnAttenteRecord &&
        nom == other.nom &&
        code == other.code &&
        statut == other.statut &&
        priorite == other.priorite &&
        listeArticles == other.listeArticles &&
        date == other.date &&
        heure == other.heure &&
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
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, nom.hashCode),
                                                code.hashCode),
                                            statut.hashCode),
                                        priorite.hashCode),
                                    listeArticles.hashCode),
                                date.hashCode),
                            heure.hashCode),
                        demandeur.hashCode),
                    nature.hashCode),
                type.hashCode),
            dateFiltre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BonEnAttenteRecord')
          ..add('nom', nom)
          ..add('code', code)
          ..add('statut', statut)
          ..add('priorite', priorite)
          ..add('listeArticles', listeArticles)
          ..add('date', date)
          ..add('heure', heure)
          ..add('demandeur', demandeur)
          ..add('nature', nature)
          ..add('type', type)
          ..add('dateFiltre', dateFiltre)
          ..add('reference', reference))
        .toString();
  }
}

class BonEnAttenteRecordBuilder
    implements Builder<BonEnAttenteRecord, BonEnAttenteRecordBuilder> {
  _$BonEnAttenteRecord _$v;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  int _statut;
  int get statut => _$this._statut;
  set statut(int statut) => _$this._statut = statut;

  String _priorite;
  String get priorite => _$this._priorite;
  set priorite(String priorite) => _$this._priorite = priorite;

  ListBuilder<DocumentReference<Object>> _listeArticles;
  ListBuilder<DocumentReference<Object>> get listeArticles =>
      _$this._listeArticles ??= new ListBuilder<DocumentReference<Object>>();
  set listeArticles(ListBuilder<DocumentReference<Object>> listeArticles) =>
      _$this._listeArticles = listeArticles;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _heure;
  String get heure => _$this._heure;
  set heure(String heure) => _$this._heure = heure;

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

  BonEnAttenteRecordBuilder() {
    BonEnAttenteRecord._initializeBuilder(this);
  }

  BonEnAttenteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _code = $v.code;
      _statut = $v.statut;
      _priorite = $v.priorite;
      _listeArticles = $v.listeArticles?.toBuilder();
      _date = $v.date;
      _heure = $v.heure;
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
  void replace(BonEnAttenteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BonEnAttenteRecord;
  }

  @override
  void update(void Function(BonEnAttenteRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BonEnAttenteRecord build() {
    _$BonEnAttenteRecord _$result;
    try {
      _$result = _$v ??
          new _$BonEnAttenteRecord._(
              nom: nom,
              code: code,
              statut: statut,
              priorite: priorite,
              listeArticles: _listeArticles?.build(),
              date: date,
              heure: heure,
              demandeur: demandeur,
              nature: nature,
              type: type,
              dateFiltre: dateFiltre,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'listeArticles';
        _listeArticles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BonEnAttenteRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
