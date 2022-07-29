import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_croisement_record.g.dart';

abstract class DateCroisementRecord
    implements Built<DateCroisementRecord, DateCroisementRecordBuilder> {
  static Serializer<DateCroisementRecord> get serializer =>
      _$dateCroisementRecordSerializer;

  @nullable
  String get date;

  @nullable
  double get coutCommande;

  @nullable
  double get coutApprovisio;

  @nullable
  double get coutDifference;

  @nullable
  DateTime get dateFiltre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DateCroisementRecordBuilder builder) => builder
    ..date = ''
    ..coutCommande = 0.0
    ..coutApprovisio = 0.0
    ..coutDifference = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_croisement');

  static Stream<DateCroisementRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateCroisementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateCroisementRecord._();
  factory DateCroisementRecord(
          [void Function(DateCroisementRecordBuilder) updates]) =
      _$DateCroisementRecord;

  static DateCroisementRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateCroisementRecordData({
  String date,
  double coutCommande,
  double coutApprovisio,
  double coutDifference,
  DateTime dateFiltre,
}) =>
    serializers.toFirestore(
        DateCroisementRecord.serializer,
        DateCroisementRecord((d) => d
          ..date = date
          ..coutCommande = coutCommande
          ..coutApprovisio = coutApprovisio
          ..coutDifference = coutDifference
          ..dateFiltre = dateFiltre));
