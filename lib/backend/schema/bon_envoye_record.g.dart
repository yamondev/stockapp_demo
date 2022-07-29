// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bon_envoye_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BonEnvoyeRecord> _$bonEnvoyeRecordSerializer =
    new _$BonEnvoyeRecordSerializer();

class _$BonEnvoyeRecordSerializer
    implements StructuredSerializer<BonEnvoyeRecord> {
  @override
  final Iterable<Type> types = const [BonEnvoyeRecord, _$BonEnvoyeRecord];
  @override
  final String wireName = 'BonEnvoyeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BonEnvoyeRecord object,
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
    value = object.intituleStatut;
    if (value != null) {
      result
        ..add('intitule_statut')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cout;
    if (value != null) {
      result
        ..add('cout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.priorite;
    if (value != null) {
      result
        ..add('priorite')
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
    value = object.clotureur;
    if (value != null) {
      result
        ..add('clotureur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.jour;
    if (value != null) {
      result
        ..add('jour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mois;
    if (value != null) {
      result
        ..add('mois')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.annee;
    if (value != null) {
      result
        ..add('annee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateValideur;
    if (value != null) {
      result
        ..add('date_valideur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.heureValideur;
    if (value != null) {
      result
        ..add('heure_valideur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jourValideur;
    if (value != null) {
      result
        ..add('jour_valideur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moisValideur;
    if (value != null) {
      result
        ..add('mois_valideur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anneeValideur;
    if (value != null) {
      result
        ..add('annee_valideur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateClotureur;
    if (value != null) {
      result
        ..add('date_clotureur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.heureClotureur;
    if (value != null) {
      result
        ..add('heure_clotureur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jourClotureur;
    if (value != null) {
      result
        ..add('jour_clotureur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moisClotureur;
    if (value != null) {
      result
        ..add('mois_clotureur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anneeClotureur;
    if (value != null) {
      result
        ..add('annee_clotureur')
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
    value = object.dateFiltre2;
    if (value != null) {
      result
        ..add('dateFiltre2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateFiltre3;
    if (value != null) {
      result
        ..add('dateFiltre3')
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
  BonEnvoyeRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BonEnvoyeRecordBuilder();

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
              specifiedType: const FullType(String)) as String;
          break;
        case 'demandeur':
          result.demandeur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heure':
          result.heure = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'intitule_statut':
          result.intituleStatut = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cout':
          result.cout = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'priorite':
          result.priorite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'valideur':
          result.valideur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'clotureur':
          result.clotureur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'jour':
          result.jour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mois':
          result.mois = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annee':
          result.annee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_valideur':
          result.dateValideur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heure_valideur':
          result.heureValideur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jour_valideur':
          result.jourValideur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mois_valideur':
          result.moisValideur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annee_valideur':
          result.anneeValideur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_clotureur':
          result.dateClotureur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heure_clotureur':
          result.heureClotureur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jour_clotureur':
          result.jourClotureur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mois_clotureur':
          result.moisClotureur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annee_clotureur':
          result.anneeClotureur = serializers.deserialize(value,
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
        case 'dateFiltre2':
          result.dateFiltre2 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'dateFiltre3':
          result.dateFiltre3 = serializers.deserialize(value,
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

class _$BonEnvoyeRecord extends BonEnvoyeRecord {
  @override
  final String nom;
  @override
  final String code;
  @override
  final String statut;
  @override
  final DocumentReference<Object> demandeur;
  @override
  final String date;
  @override
  final String heure;
  @override
  final String intituleStatut;
  @override
  final double cout;
  @override
  final String priorite;
  @override
  final DocumentReference<Object> valideur;
  @override
  final DocumentReference<Object> clotureur;
  @override
  final String jour;
  @override
  final String mois;
  @override
  final String annee;
  @override
  final String dateValideur;
  @override
  final String heureValideur;
  @override
  final String jourValideur;
  @override
  final String moisValideur;
  @override
  final String anneeValideur;
  @override
  final String dateClotureur;
  @override
  final String heureClotureur;
  @override
  final String jourClotureur;
  @override
  final String moisClotureur;
  @override
  final String anneeClotureur;
  @override
  final String nature;
  @override
  final String type;
  @override
  final DateTime dateFiltre;
  @override
  final DateTime dateFiltre2;
  @override
  final DateTime dateFiltre3;
  @override
  final DocumentReference<Object> reference;

  factory _$BonEnvoyeRecord([void Function(BonEnvoyeRecordBuilder) updates]) =>
      (new BonEnvoyeRecordBuilder()..update(updates)).build();

  _$BonEnvoyeRecord._(
      {this.nom,
      this.code,
      this.statut,
      this.demandeur,
      this.date,
      this.heure,
      this.intituleStatut,
      this.cout,
      this.priorite,
      this.valideur,
      this.clotureur,
      this.jour,
      this.mois,
      this.annee,
      this.dateValideur,
      this.heureValideur,
      this.jourValideur,
      this.moisValideur,
      this.anneeValideur,
      this.dateClotureur,
      this.heureClotureur,
      this.jourClotureur,
      this.moisClotureur,
      this.anneeClotureur,
      this.nature,
      this.type,
      this.dateFiltre,
      this.dateFiltre2,
      this.dateFiltre3,
      this.reference})
      : super._();

  @override
  BonEnvoyeRecord rebuild(void Function(BonEnvoyeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BonEnvoyeRecordBuilder toBuilder() =>
      new BonEnvoyeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BonEnvoyeRecord &&
        nom == other.nom &&
        code == other.code &&
        statut == other.statut &&
        demandeur == other.demandeur &&
        date == other.date &&
        heure == other.heure &&
        intituleStatut == other.intituleStatut &&
        cout == other.cout &&
        priorite == other.priorite &&
        valideur == other.valideur &&
        clotureur == other.clotureur &&
        jour == other.jour &&
        mois == other.mois &&
        annee == other.annee &&
        dateValideur == other.dateValideur &&
        heureValideur == other.heureValideur &&
        jourValideur == other.jourValideur &&
        moisValideur == other.moisValideur &&
        anneeValideur == other.anneeValideur &&
        dateClotureur == other.dateClotureur &&
        heureClotureur == other.heureClotureur &&
        jourClotureur == other.jourClotureur &&
        moisClotureur == other.moisClotureur &&
        anneeClotureur == other.anneeClotureur &&
        nature == other.nature &&
        type == other.type &&
        dateFiltre == other.dateFiltre &&
        dateFiltre2 == other.dateFiltre2 &&
        dateFiltre3 == other.dateFiltre3 &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, nom.hashCode), code.hashCode), statut.hashCode), demandeur.hashCode), date.hashCode), heure.hashCode), intituleStatut.hashCode), cout.hashCode), priorite.hashCode), valideur.hashCode), clotureur.hashCode),
                                                                                jour.hashCode),
                                                                            mois.hashCode),
                                                                        annee.hashCode),
                                                                    dateValideur.hashCode),
                                                                heureValideur.hashCode),
                                                            jourValideur.hashCode),
                                                        moisValideur.hashCode),
                                                    anneeValideur.hashCode),
                                                dateClotureur.hashCode),
                                            heureClotureur.hashCode),
                                        jourClotureur.hashCode),
                                    moisClotureur.hashCode),
                                anneeClotureur.hashCode),
                            nature.hashCode),
                        type.hashCode),
                    dateFiltre.hashCode),
                dateFiltre2.hashCode),
            dateFiltre3.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BonEnvoyeRecord')
          ..add('nom', nom)
          ..add('code', code)
          ..add('statut', statut)
          ..add('demandeur', demandeur)
          ..add('date', date)
          ..add('heure', heure)
          ..add('intituleStatut', intituleStatut)
          ..add('cout', cout)
          ..add('priorite', priorite)
          ..add('valideur', valideur)
          ..add('clotureur', clotureur)
          ..add('jour', jour)
          ..add('mois', mois)
          ..add('annee', annee)
          ..add('dateValideur', dateValideur)
          ..add('heureValideur', heureValideur)
          ..add('jourValideur', jourValideur)
          ..add('moisValideur', moisValideur)
          ..add('anneeValideur', anneeValideur)
          ..add('dateClotureur', dateClotureur)
          ..add('heureClotureur', heureClotureur)
          ..add('jourClotureur', jourClotureur)
          ..add('moisClotureur', moisClotureur)
          ..add('anneeClotureur', anneeClotureur)
          ..add('nature', nature)
          ..add('type', type)
          ..add('dateFiltre', dateFiltre)
          ..add('dateFiltre2', dateFiltre2)
          ..add('dateFiltre3', dateFiltre3)
          ..add('reference', reference))
        .toString();
  }
}

class BonEnvoyeRecordBuilder
    implements Builder<BonEnvoyeRecord, BonEnvoyeRecordBuilder> {
  _$BonEnvoyeRecord _$v;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _statut;
  String get statut => _$this._statut;
  set statut(String statut) => _$this._statut = statut;

  DocumentReference<Object> _demandeur;
  DocumentReference<Object> get demandeur => _$this._demandeur;
  set demandeur(DocumentReference<Object> demandeur) =>
      _$this._demandeur = demandeur;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _heure;
  String get heure => _$this._heure;
  set heure(String heure) => _$this._heure = heure;

  String _intituleStatut;
  String get intituleStatut => _$this._intituleStatut;
  set intituleStatut(String intituleStatut) =>
      _$this._intituleStatut = intituleStatut;

  double _cout;
  double get cout => _$this._cout;
  set cout(double cout) => _$this._cout = cout;

  String _priorite;
  String get priorite => _$this._priorite;
  set priorite(String priorite) => _$this._priorite = priorite;

  DocumentReference<Object> _valideur;
  DocumentReference<Object> get valideur => _$this._valideur;
  set valideur(DocumentReference<Object> valideur) =>
      _$this._valideur = valideur;

  DocumentReference<Object> _clotureur;
  DocumentReference<Object> get clotureur => _$this._clotureur;
  set clotureur(DocumentReference<Object> clotureur) =>
      _$this._clotureur = clotureur;

  String _jour;
  String get jour => _$this._jour;
  set jour(String jour) => _$this._jour = jour;

  String _mois;
  String get mois => _$this._mois;
  set mois(String mois) => _$this._mois = mois;

  String _annee;
  String get annee => _$this._annee;
  set annee(String annee) => _$this._annee = annee;

  String _dateValideur;
  String get dateValideur => _$this._dateValideur;
  set dateValideur(String dateValideur) => _$this._dateValideur = dateValideur;

  String _heureValideur;
  String get heureValideur => _$this._heureValideur;
  set heureValideur(String heureValideur) =>
      _$this._heureValideur = heureValideur;

  String _jourValideur;
  String get jourValideur => _$this._jourValideur;
  set jourValideur(String jourValideur) => _$this._jourValideur = jourValideur;

  String _moisValideur;
  String get moisValideur => _$this._moisValideur;
  set moisValideur(String moisValideur) => _$this._moisValideur = moisValideur;

  String _anneeValideur;
  String get anneeValideur => _$this._anneeValideur;
  set anneeValideur(String anneeValideur) =>
      _$this._anneeValideur = anneeValideur;

  String _dateClotureur;
  String get dateClotureur => _$this._dateClotureur;
  set dateClotureur(String dateClotureur) =>
      _$this._dateClotureur = dateClotureur;

  String _heureClotureur;
  String get heureClotureur => _$this._heureClotureur;
  set heureClotureur(String heureClotureur) =>
      _$this._heureClotureur = heureClotureur;

  String _jourClotureur;
  String get jourClotureur => _$this._jourClotureur;
  set jourClotureur(String jourClotureur) =>
      _$this._jourClotureur = jourClotureur;

  String _moisClotureur;
  String get moisClotureur => _$this._moisClotureur;
  set moisClotureur(String moisClotureur) =>
      _$this._moisClotureur = moisClotureur;

  String _anneeClotureur;
  String get anneeClotureur => _$this._anneeClotureur;
  set anneeClotureur(String anneeClotureur) =>
      _$this._anneeClotureur = anneeClotureur;

  String _nature;
  String get nature => _$this._nature;
  set nature(String nature) => _$this._nature = nature;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DateTime _dateFiltre;
  DateTime get dateFiltre => _$this._dateFiltre;
  set dateFiltre(DateTime dateFiltre) => _$this._dateFiltre = dateFiltre;

  DateTime _dateFiltre2;
  DateTime get dateFiltre2 => _$this._dateFiltre2;
  set dateFiltre2(DateTime dateFiltre2) => _$this._dateFiltre2 = dateFiltre2;

  DateTime _dateFiltre3;
  DateTime get dateFiltre3 => _$this._dateFiltre3;
  set dateFiltre3(DateTime dateFiltre3) => _$this._dateFiltre3 = dateFiltre3;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BonEnvoyeRecordBuilder() {
    BonEnvoyeRecord._initializeBuilder(this);
  }

  BonEnvoyeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _code = $v.code;
      _statut = $v.statut;
      _demandeur = $v.demandeur;
      _date = $v.date;
      _heure = $v.heure;
      _intituleStatut = $v.intituleStatut;
      _cout = $v.cout;
      _priorite = $v.priorite;
      _valideur = $v.valideur;
      _clotureur = $v.clotureur;
      _jour = $v.jour;
      _mois = $v.mois;
      _annee = $v.annee;
      _dateValideur = $v.dateValideur;
      _heureValideur = $v.heureValideur;
      _jourValideur = $v.jourValideur;
      _moisValideur = $v.moisValideur;
      _anneeValideur = $v.anneeValideur;
      _dateClotureur = $v.dateClotureur;
      _heureClotureur = $v.heureClotureur;
      _jourClotureur = $v.jourClotureur;
      _moisClotureur = $v.moisClotureur;
      _anneeClotureur = $v.anneeClotureur;
      _nature = $v.nature;
      _type = $v.type;
      _dateFiltre = $v.dateFiltre;
      _dateFiltre2 = $v.dateFiltre2;
      _dateFiltre3 = $v.dateFiltre3;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BonEnvoyeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BonEnvoyeRecord;
  }

  @override
  void update(void Function(BonEnvoyeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BonEnvoyeRecord build() {
    final _$result = _$v ??
        new _$BonEnvoyeRecord._(
            nom: nom,
            code: code,
            statut: statut,
            demandeur: demandeur,
            date: date,
            heure: heure,
            intituleStatut: intituleStatut,
            cout: cout,
            priorite: priorite,
            valideur: valideur,
            clotureur: clotureur,
            jour: jour,
            mois: mois,
            annee: annee,
            dateValideur: dateValideur,
            heureValideur: heureValideur,
            jourValideur: jourValideur,
            moisValideur: moisValideur,
            anneeValideur: anneeValideur,
            dateClotureur: dateClotureur,
            heureClotureur: heureClotureur,
            jourClotureur: jourClotureur,
            moisClotureur: moisClotureur,
            anneeClotureur: anneeClotureur,
            nature: nature,
            type: type,
            dateFiltre: dateFiltre,
            dateFiltre2: dateFiltre2,
            dateFiltre3: dateFiltre3,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
