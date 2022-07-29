import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_en_traitement_record.g.dart';

abstract class DateEnTraitementRecord
    implements Built<DateEnTraitementRecord, DateEnTraitementRecordBuilder> {
  static Serializer<DateEnTraitementRecord> get serializer =>
      _$dateEnTraitementRecordSerializer;

  @nullable
  String get date;

  @nullable
  DocumentReference get demandeur;

  @nullable
  double get bonEncours;

  @nullable
  double get coutEncours;

  @nullable
  String get nature;

  @nullable
  DateTime get dateFiltre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DateEnTraitementRecordBuilder builder) =>
      builder
        ..date = ''
        ..bonEncours = 0.0
        ..coutEncours = 0.0
        ..nature = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_en_traitement');

  static Stream<DateEnTraitementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateEnTraitementRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateEnTraitementRecord._();
  factory DateEnTraitementRecord(
          [void Function(DateEnTraitementRecordBuilder) updates]) =
      _$DateEnTraitementRecord;

  static DateEnTraitementRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateEnTraitementRecordData({
  String date,
  DocumentReference demandeur,
  double bonEncours,
  double coutEncours,
  String nature,
  DateTime dateFiltre,
}) =>
    serializers.toFirestore(
        DateEnTraitementRecord.serializer,
        DateEnTraitementRecord((d) => d
          ..date = date
          ..demandeur = demandeur
          ..bonEncours = bonEncours
          ..coutEncours = coutEncours
          ..nature = nature
          ..dateFiltre = dateFiltre));
