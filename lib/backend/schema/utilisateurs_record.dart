import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'utilisateurs_record.g.dart';

abstract class UtilisateursRecord
    implements Built<UtilisateursRecord, UtilisateursRecordBuilder> {
  static Serializer<UtilisateursRecord> get serializer =>
      _$utilisateursRecordSerializer;

  @nullable
  String get nom;

  @nullable
  @BuiltValueField(wireName: 'mot_de_passe')
  String get motDePasse;

  @nullable
  String get fonction;

  @nullable
  @BuiltValueField(wireName: 'corps_de_metier')
  String get corpsDeMetier;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UtilisateursRecordBuilder builder) => builder
    ..nom = ''
    ..motDePasse = ''
    ..fonction = ''
    ..corpsDeMetier = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('utilisateurs');

  static Stream<UtilisateursRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UtilisateursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UtilisateursRecord._();
  factory UtilisateursRecord(
          [void Function(UtilisateursRecordBuilder) updates]) =
      _$UtilisateursRecord;

  static UtilisateursRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUtilisateursRecordData({
  String nom,
  String motDePasse,
  String fonction,
  String corpsDeMetier,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        UtilisateursRecord.serializer,
        UtilisateursRecord((u) => u
          ..nom = nom
          ..motDePasse = motDePasse
          ..fonction = fonction
          ..corpsDeMetier = corpsDeMetier
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
