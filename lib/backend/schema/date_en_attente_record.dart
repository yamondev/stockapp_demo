import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_en_attente_record.g.dart';

abstract class DateEnAttenteRecord
    implements Built<DateEnAttenteRecord, DateEnAttenteRecordBuilder> {
  static Serializer<DateEnAttenteRecord> get serializer =>
      _$dateEnAttenteRecordSerializer;

  @nullable
  String get date;

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

  static void _initializeBuilder(DateEnAttenteRecordBuilder builder) => builder
    ..date = ''
    ..nature = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_en_attente');

  static Stream<DateEnAttenteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DateEnAttenteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  DateEnAttenteRecord._();
  factory DateEnAttenteRecord(
          [void Function(DateEnAttenteRecordBuilder) updates]) =
      _$DateEnAttenteRecord;

  static DateEnAttenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDateEnAttenteRecordData({
  String date,
  DocumentReference demandeur,
  String nature,
  String type,
  DateTime dateFiltre,
}) =>
    serializers.toFirestore(
        DateEnAttenteRecord.serializer,
        DateEnAttenteRecord((d) => d
          ..date = date
          ..demandeur = demandeur
          ..nature = nature
          ..type = type
          ..dateFiltre = dateFiltre));
