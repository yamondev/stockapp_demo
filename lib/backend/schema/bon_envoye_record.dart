import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bon_envoye_record.g.dart';

abstract class BonEnvoyeRecord
    implements Built<BonEnvoyeRecord, BonEnvoyeRecordBuilder> {
  static Serializer<BonEnvoyeRecord> get serializer =>
      _$bonEnvoyeRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get code;

  @nullable
  String get statut;

  @nullable
  DocumentReference get demandeur;

  @nullable
  String get date;

  @nullable
  String get heure;

  @nullable
  @BuiltValueField(wireName: 'intitule_statut')
  String get intituleStatut;

  @nullable
  double get cout;

  @nullable
  String get priorite;

  @nullable
  DocumentReference get valideur;

  @nullable
  DocumentReference get clotureur;

  @nullable
  String get jour;

  @nullable
  String get mois;

  @nullable
  String get annee;

  @nullable
  @BuiltValueField(wireName: 'date_valideur')
  String get dateValideur;

  @nullable
  @BuiltValueField(wireName: 'heure_valideur')
  String get heureValideur;

  @nullable
  @BuiltValueField(wireName: 'jour_valideur')
  String get jourValideur;

  @nullable
  @BuiltValueField(wireName: 'mois_valideur')
  String get moisValideur;

  @nullable
  @BuiltValueField(wireName: 'annee_valideur')
  String get anneeValideur;

  @nullable
  @BuiltValueField(wireName: 'date_clotureur')
  String get dateClotureur;

  @nullable
  @BuiltValueField(wireName: 'heure_clotureur')
  String get heureClotureur;

  @nullable
  @BuiltValueField(wireName: 'jour_clotureur')
  String get jourClotureur;

  @nullable
  @BuiltValueField(wireName: 'mois_clotureur')
  String get moisClotureur;

  @nullable
  @BuiltValueField(wireName: 'annee_clotureur')
  String get anneeClotureur;

  @nullable
  String get nature;

  @nullable
  String get type;

  @nullable
  DateTime get dateFiltre;

  @nullable
  DateTime get dateFiltre2;

  @nullable
  DateTime get dateFiltre3;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BonEnvoyeRecordBuilder builder) => builder
    ..nom = ''
    ..code = ''
    ..statut = ''
    ..date = ''
    ..heure = ''
    ..intituleStatut = ''
    ..cout = 0.0
    ..priorite = ''
    ..jour = ''
    ..mois = ''
    ..annee = ''
    ..dateValideur = ''
    ..heureValideur = ''
    ..jourValideur = ''
    ..moisValideur = ''
    ..anneeValideur = ''
    ..dateClotureur = ''
    ..heureClotureur = ''
    ..jourClotureur = ''
    ..moisClotureur = ''
    ..anneeClotureur = ''
    ..nature = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bon_envoye');

  static Stream<BonEnvoyeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BonEnvoyeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BonEnvoyeRecord._();
  factory BonEnvoyeRecord([void Function(BonEnvoyeRecordBuilder) updates]) =
      _$BonEnvoyeRecord;

  static BonEnvoyeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBonEnvoyeRecordData({
  String nom,
  String code,
  String statut,
  DocumentReference demandeur,
  String date,
  String heure,
  String intituleStatut,
  double cout,
  String priorite,
  DocumentReference valideur,
  DocumentReference clotureur,
  String jour,
  String mois,
  String annee,
  String dateValideur,
  String heureValideur,
  String jourValideur,
  String moisValideur,
  String anneeValideur,
  String dateClotureur,
  String heureClotureur,
  String jourClotureur,
  String moisClotureur,
  String anneeClotureur,
  String nature,
  String type,
  DateTime dateFiltre,
  DateTime dateFiltre2,
  DateTime dateFiltre3,
}) =>
    serializers.toFirestore(
        BonEnvoyeRecord.serializer,
        BonEnvoyeRecord((b) => b
          ..nom = nom
          ..code = code
          ..statut = statut
          ..demandeur = demandeur
          ..date = date
          ..heure = heure
          ..intituleStatut = intituleStatut
          ..cout = cout
          ..priorite = priorite
          ..valideur = valideur
          ..clotureur = clotureur
          ..jour = jour
          ..mois = mois
          ..annee = annee
          ..dateValideur = dateValideur
          ..heureValideur = heureValideur
          ..jourValideur = jourValideur
          ..moisValideur = moisValideur
          ..anneeValideur = anneeValideur
          ..dateClotureur = dateClotureur
          ..heureClotureur = heureClotureur
          ..jourClotureur = jourClotureur
          ..moisClotureur = moisClotureur
          ..anneeClotureur = anneeClotureur
          ..nature = nature
          ..type = type
          ..dateFiltre = dateFiltre
          ..dateFiltre2 = dateFiltre2
          ..dateFiltre3 = dateFiltre3));
