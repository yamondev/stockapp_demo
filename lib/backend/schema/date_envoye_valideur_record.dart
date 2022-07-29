import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_envoye_valideur_record.g.dart';

abstract class DateEnvoyeValideurRecord
    implements
        Built<DateEnvoyeValideurRecord, DateEnvoyeValideurRecordBuilder> {
  static Serializer<DateEnvoyeValideurRecord> get serializer =>
      _$dateEnvoyeValideurRecordSerializer;

  @nullable
  String get date;

  @nullable
  DocumentReference get valideur;

  @nullable
  double get bonValide;

  @nullable
  double get coutValide;

  @nullable
  String get nature;

  @nullable
  DateTime get dateFiltre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DateEnvoyeValideurRecordBuilder builder) =>
      builder
        ..date = ''
        ..bonValide = 0.0
        ..coutValide = 0.0
        ..nature = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_envoye_valideur');

  static Stream<DateEnvoyeValideurRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateEnvoyeValideurRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateEnvoyeValideurRecord._();
  factory DateEnvoyeValideurRecord(
          [void Function(DateEnvoyeValideurRecordBuilder) updates]) =
      _$DateEnvoyeValideurRecord;

  static DateEnvoyeValideurRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateEnvoyeValideurRecordData({
  String date,
  DocumentReference valideur,
  double bonValide,
  double coutValide,
  String nature,
  DateTime dateFiltre,
}) =>
    serializers.toFirestore(
        DateEnvoyeValideurRecord.serializer,
        DateEnvoyeValideurRecord((d) => d
          ..date = date
          ..valideur = valideur
          ..bonValide = bonValide
          ..coutValide = coutValide
          ..nature = nature
          ..dateFiltre = dateFiltre));
