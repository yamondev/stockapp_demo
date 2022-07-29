import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_envoye_record.g.dart';

abstract class DateEnvoyeRecord
    implements Built<DateEnvoyeRecord, DateEnvoyeRecordBuilder> {
  static Serializer<DateEnvoyeRecord> get serializer =>
      _$dateEnvoyeRecordSerializer;

  @nullable
  String get date;

  @nullable
  DocumentReference get demandeur;

  @nullable
  double get bonCree;

  @nullable
  double get coutCree;

  @nullable
  String get nature;

  @nullable
  DateTime get dateFiltre;

  @nullable
  int get index;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DateEnvoyeRecordBuilder builder) => builder
    ..date = ''
    ..bonCree = 0.0
    ..coutCree = 0.0
    ..nature = ''
    ..index = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_envoye');

  static Stream<DateEnvoyeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateEnvoyeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateEnvoyeRecord._();
  factory DateEnvoyeRecord([void Function(DateEnvoyeRecordBuilder) updates]) =
      _$DateEnvoyeRecord;

  static DateEnvoyeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateEnvoyeRecordData({
  String date,
  DocumentReference demandeur,
  double bonCree,
  double coutCree,
  String nature,
  DateTime dateFiltre,
  int index,
}) =>
    serializers.toFirestore(
        DateEnvoyeRecord.serializer,
        DateEnvoyeRecord((d) => d
          ..date = date
          ..demandeur = demandeur
          ..bonCree = bonCree
          ..coutCree = coutCree
          ..nature = nature
          ..dateFiltre = dateFiltre
          ..index = index));
