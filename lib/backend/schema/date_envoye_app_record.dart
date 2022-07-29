import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_envoye_app_record.g.dart';

abstract class DateEnvoyeAppRecord
    implements Built<DateEnvoyeAppRecord, DateEnvoyeAppRecordBuilder> {
  static Serializer<DateEnvoyeAppRecord> get serializer =>
      _$dateEnvoyeAppRecordSerializer;

  @nullable
  String get date;

  @nullable
  DocumentReference get demandeur;

  @nullable
  double get bonCree;

  @nullable
  double get coutCree;

  @nullable
  String get type;

  @nullable
  DateTime get dateFiltre;

  @nullable
  int get index;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DateEnvoyeAppRecordBuilder builder) => builder
    ..date = ''
    ..bonCree = 0.0
    ..coutCree = 0.0
    ..type = ''
    ..index = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_envoye_app');

  static Stream<DateEnvoyeAppRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateEnvoyeAppRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateEnvoyeAppRecord._();
  factory DateEnvoyeAppRecord(
          [void Function(DateEnvoyeAppRecordBuilder) updates]) =
      _$DateEnvoyeAppRecord;

  static DateEnvoyeAppRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateEnvoyeAppRecordData({
  String date,
  DocumentReference demandeur,
  double bonCree,
  double coutCree,
  String type,
  DateTime dateFiltre,
  int index,
}) =>
    serializers.toFirestore(
        DateEnvoyeAppRecord.serializer,
        DateEnvoyeAppRecord((d) => d
          ..date = date
          ..demandeur = demandeur
          ..bonCree = bonCree
          ..coutCree = coutCree
          ..type = type
          ..dateFiltre = dateFiltre
          ..index = index));
