import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_rejete_valideur_record.g.dart';

abstract class DateRejeteValideurRecord
    implements
        Built<DateRejeteValideurRecord, DateRejeteValideurRecordBuilder> {
  static Serializer<DateRejeteValideurRecord> get serializer =>
      _$dateRejeteValideurRecordSerializer;

  @nullable
  String get date;

  @nullable
  DocumentReference get rejeteur;

  @nullable
  double get bonRejete;

  @nullable
  double get coutRejete;

  @nullable
  String get nature;

  @nullable
  DateTime get dateFiltre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DateRejeteValideurRecordBuilder builder) =>
      builder
        ..date = ''
        ..bonRejete = 0.0
        ..coutRejete = 0.0
        ..nature = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_rejete_valideur');

  static Stream<DateRejeteValideurRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateRejeteValideurRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateRejeteValideurRecord._();
  factory DateRejeteValideurRecord(
          [void Function(DateRejeteValideurRecordBuilder) updates]) =
      _$DateRejeteValideurRecord;

  static DateRejeteValideurRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateRejeteValideurRecordData({
  String date,
  DocumentReference rejeteur,
  double bonRejete,
  double coutRejete,
  String nature,
  DateTime dateFiltre,
}) =>
    serializers.toFirestore(
        DateRejeteValideurRecord.serializer,
        DateRejeteValideurRecord((d) => d
          ..date = date
          ..rejeteur = rejeteur
          ..bonRejete = bonRejete
          ..coutRejete = coutRejete
          ..nature = nature
          ..dateFiltre = dateFiltre));
