// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_selectonne_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticleSelectonneRecord> _$articleSelectonneRecordSerializer =
    new _$ArticleSelectonneRecordSerializer();

class _$ArticleSelectonneRecordSerializer
    implements StructuredSerializer<ArticleSelectonneRecord> {
  @override
  final Iterable<Type> types = const [
    ArticleSelectonneRecord,
    _$ArticleSelectonneRecord
  ];
  @override
  final String wireName = 'ArticleSelectonneRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ArticleSelectonneRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomArticle;
    if (value != null) {
      result
        ..add('nom_article')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantiteArticle;
    if (value != null) {
      result
        ..add('quantite_article')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.demandeur;
    if (value != null) {
      result
        ..add('demandeur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.nature;
    if (value != null) {
      result
        ..add('nature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ArticleSelectonneRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleSelectonneRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nom_article':
          result.nomArticle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantite_article':
          result.quantiteArticle = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'demandeur':
          result.demandeur = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'nature':
          result.nature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleSelectonneRecord extends ArticleSelectonneRecord {
  @override
  final String code;
  @override
  final String nomArticle;
  @override
  final double quantiteArticle;
  @override
  final DocumentReference<Object> demandeur;
  @override
  final String nature;
  @override
  final String type;
  @override
  final DocumentReference<Object> reference;

  factory _$ArticleSelectonneRecord(
          [void Function(ArticleSelectonneRecordBuilder) updates]) =>
      (new ArticleSelectonneRecordBuilder()..update(updates)).build();

  _$ArticleSelectonneRecord._(
      {this.code,
      this.nomArticle,
      this.quantiteArticle,
      this.demandeur,
      this.nature,
      this.type,
      this.reference})
      : super._();

  @override
  ArticleSelectonneRecord rebuild(
          void Function(ArticleSelectonneRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleSelectonneRecordBuilder toBuilder() =>
      new ArticleSelectonneRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleSelectonneRecord &&
        code == other.code &&
        nomArticle == other.nomArticle &&
        quantiteArticle == other.quantiteArticle &&
        demandeur == other.demandeur &&
        nature == other.nature &&
        type == other.type &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, code.hashCode), nomArticle.hashCode),
                        quantiteArticle.hashCode),
                    demandeur.hashCode),
                nature.hashCode),
            type.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArticleSelectonneRecord')
          ..add('code', code)
          ..add('nomArticle', nomArticle)
          ..add('quantiteArticle', quantiteArticle)
          ..add('demandeur', demandeur)
          ..add('nature', nature)
          ..add('type', type)
          ..add('reference', reference))
        .toString();
  }
}

class ArticleSelectonneRecordBuilder
    implements
        Builder<ArticleSelectonneRecord, ArticleSelectonneRecordBuilder> {
  _$ArticleSelectonneRecord _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _nomArticle;
  String get nomArticle => _$this._nomArticle;
  set nomArticle(String nomArticle) => _$this._nomArticle = nomArticle;

  double _quantiteArticle;
  double get quantiteArticle => _$this._quantiteArticle;
  set quantiteArticle(double quantiteArticle) =>
      _$this._quantiteArticle = quantiteArticle;

  DocumentReference<Object> _demandeur;
  DocumentReference<Object> get demandeur => _$this._demandeur;
  set demandeur(DocumentReference<Object> demandeur) =>
      _$this._demandeur = demandeur;

  String _nature;
  String get nature => _$this._nature;
  set nature(String nature) => _$this._nature = nature;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ArticleSelectonneRecordBuilder() {
    ArticleSelectonneRecord._initializeBuilder(this);
  }

  ArticleSelectonneRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _nomArticle = $v.nomArticle;
      _quantiteArticle = $v.quantiteArticle;
      _demandeur = $v.demandeur;
      _nature = $v.nature;
      _type = $v.type;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleSelectonneRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleSelectonneRecord;
  }

  @override
  void update(void Function(ArticleSelectonneRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ArticleSelectonneRecord build() {
    final _$result = _$v ??
        new _$ArticleSelectonneRecord._(
            code: code,
            nomArticle: nomArticle,
            quantiteArticle: quantiteArticle,
            demandeur: demandeur,
            nature: nature,
            type: type,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
