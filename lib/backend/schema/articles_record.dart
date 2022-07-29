import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'articles_record.g.dart';

abstract class ArticlesRecord
    implements Built<ArticlesRecord, ArticlesRecordBuilder> {
  static Serializer<ArticlesRecord> get serializer =>
      _$articlesRecordSerializer;

  @nullable
  String get nom;

  @nullable
  @BuiltValueField(wireName: 'prix_unitaire')
  double get prixUnitaire;

  @nullable
  double get quantite;

  @nullable
  String get code;

  @nullable
  bool get cadena;

  @nullable
  bool get consommes;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ArticlesRecordBuilder builder) => builder
    ..nom = ''
    ..prixUnitaire = 0.0
    ..quantite = 0.0
    ..code = ''
    ..cadena = false
    ..consommes = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ArticlesRecord._();
  factory ArticlesRecord([void Function(ArticlesRecordBuilder) updates]) =
      _$ArticlesRecord;

  static ArticlesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createArticlesRecordData({
  String nom,
  double prixUnitaire,
  double quantite,
  String code,
  bool cadena,
  bool consommes,
}) =>
    serializers.toFirestore(
        ArticlesRecord.serializer,
        ArticlesRecord((a) => a
          ..nom = nom
          ..prixUnitaire = prixUnitaire
          ..quantite = quantite
          ..code = code
          ..cadena = cadena
          ..consommes = consommes));
