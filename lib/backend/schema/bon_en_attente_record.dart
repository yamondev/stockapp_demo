import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bon_en_attente_record.g.dart';

abstract class BonEnAttenteRecord
    implements Built<BonEnAttenteRecord, BonEnAttenteRecordBuilder> {
  static Serializer<BonEnAttenteRecord> get serializer =>
      _$bonEnAttenteRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get code;

  @nullable
  int get statut;

  @nullable
  String get priorite;

  @nullable
  @BuiltValueField(wireName: 'liste_articles')
  BuiltList<DocumentReference> get listeArticles;

  @nullable
  String get date;

  @nullable
  String get heure;

  @nullable
  DocumentReference get demandeur;

  @nullable
  String get nature;

  @nullable
  String get type;

  @nullable
  DateTime get dateFiltre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BonEnAttenteRecordBuilder builder) => builder
    ..nom = ''
    ..code = ''
    ..statut = 0
    ..priorite = ''
    ..listeArticles = ListBuilder()
    ..date = ''
    ..heure = ''
    ..nature = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bon_en_attente');

  static Stream<BonEnAttenteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BonEnAttenteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  BonEnAttenteRecord._();
  factory BonEnAttenteRecord(
          [void Function(BonEnAttenteRecordBuilder) updates]) =
      _$BonEnAttenteRecord;

  static BonEnAttenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBonEnAttenteRecordData({
  String nom,
  String code,
  int statut,
  String priorite,
  String date,
  String heure,
  DocumentReference demandeur,
  String nature,
  String type,
  DateTime dateFiltre,
}) =>
    serializers.toFirestore(
        BonEnAttenteRecord.serializer,
        BonEnAttenteRecord((b) => b
          ..nom = nom
          ..code = code
          ..statut = statut
          ..priorite = priorite
          ..listeArticles = null
          ..date = date
          ..heure = heure
          ..demandeur = demandeur
          ..nature = nature
          ..type = type
          ..dateFiltre = dateFiltre));
