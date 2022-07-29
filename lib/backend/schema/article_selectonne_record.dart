import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'article_selectonne_record.g.dart';

abstract class ArticleSelectonneRecord
    implements Built<ArticleSelectonneRecord, ArticleSelectonneRecordBuilder> {
  static Serializer<ArticleSelectonneRecord> get serializer =>
      _$articleSelectonneRecordSerializer;

  @nullable
  String get code;

  @nullable
  @BuiltValueField(wireName: 'nom_article')
  String get nomArticle;

  @nullable
  @BuiltValueField(wireName: 'quantite_article')
  double get quantiteArticle;

  @nullable
  DocumentReference get demandeur;

  @nullable
  String get nature;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ArticleSelectonneRecordBuilder builder) =>
      builder
        ..code = ''
        ..nomArticle = ''
        ..quantiteArticle = 0.0
        ..nature = ''
        ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('article_selectonne');

  static Stream<ArticleSelectonneRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ArticleSelectonneRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ArticleSelectonneRecord._();
  factory ArticleSelectonneRecord(
          [void Function(ArticleSelectonneRecordBuilder) updates]) =
      _$ArticleSelectonneRecord;

  static ArticleSelectonneRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createArticleSelectonneRecordData({
  String code,
  String nomArticle,
  double quantiteArticle,
  DocumentReference demandeur,
  String nature,
  String type,
}) =>
    serializers.toFirestore(
        ArticleSelectonneRecord.serializer,
        ArticleSelectonneRecord((a) => a
          ..code = code
          ..nomArticle = nomArticle
          ..quantiteArticle = quantiteArticle
          ..demandeur = demandeur
          ..nature = nature
          ..type = type));
