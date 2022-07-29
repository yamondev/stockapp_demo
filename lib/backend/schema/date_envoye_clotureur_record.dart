import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_envoye_clotureur_record.g.dart';

abstract class DateEnvoyeClotureurRecord
    implements
        Built<DateEnvoyeClotureurRecord, DateEnvoyeClotureurRecordBuilder> {
  static Serializer<DateEnvoyeClotureurRecord> get serializer =>
      _$dateEnvoyeClotureurRecordSerializer;

  @nullable
  String get date;

  @nullable
  DocumentReference get clotureur;

  @nullable
  double get bonCloture;

  @nullable
  double get coutCloture;

  @nullable
  String get nomClotureur;

  @nullable
  String get nature;

  @nullable
  String get type;

  @nullable
  DateTime get dateFiltre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DateEnvoyeClotureurRecordBuilder builder) =>
      builder
        ..date = ''
        ..bonCloture = 0.0
        ..coutCloture = 0.0
        ..nomClotureur = ''
        ..nature = ''
        ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_envoye_clotureur');

  static Stream<DateEnvoyeClotureurRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateEnvoyeClotureurRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateEnvoyeClotureurRecord._();
  factory DateEnvoyeClotureurRecord(
          [void Function(DateEnvoyeClotureurRecordBuilder) updates]) =
      _$DateEnvoyeClotureurRecord;

  static DateEnvoyeClotureurRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateEnvoyeClotureurRecordData({
  String date,
  DocumentReference clotureur,
  double bonCloture,
  double coutCloture,
  String nomClotureur,
  String nature,
  String type,
  DateTime dateFiltre,
}) =>
    serializers.toFirestore(
        DateEnvoyeClotureurRecord.serializer,
        DateEnvoyeClotureurRecord((d) => d
          ..date = date
          ..clotureur = clotureur
          ..bonCloture = bonCloture
          ..coutCloture = coutCloture
          ..nomClotureur = nomClotureur
          ..nature = nature
          ..type = type
          ..dateFiltre = dateFiltre));
