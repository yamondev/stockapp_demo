// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticlesRecord> _$articlesRecordSerializer =
    new _$ArticlesRecordSerializer();

class _$ArticlesRecordSerializer
    implements StructuredSerializer<ArticlesRecord> {
  @override
  final Iterable<Type> types = const [ArticlesRecord, _$ArticlesRecord];
  @override
  final String wireName = 'ArticlesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ArticlesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prixUnitaire;
    if (value != null) {
      result
        ..add('prix_unitaire')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantite;
    if (value != null) {
      result
        ..add('quantite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cadena;
    if (value != null) {
      result
        ..add('cadena')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.consommes;
    if (value != null) {
      result
        ..add('consommes')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  ArticlesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticlesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prix_unitaire':
          result.prixUnitaire = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'quantite':
          result.quantite = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cadena':
          result.cadena = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'consommes':
          result.consommes = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$ArticlesRecord extends ArticlesRecord {
  @override
  final String nom;
  @override
  final double prixUnitaire;
  @override
  final double quantite;
  @override
  final String code;
  @override
  final bool cadena;
  @override
  final bool consommes;
  @override
  final DocumentReference<Object> reference;

  factory _$ArticlesRecord([void Function(ArticlesRecordBuilder) updates]) =>
      (new ArticlesRecordBuilder()..update(updates)).build();

  _$ArticlesRecord._(
      {this.nom,
      this.prixUnitaire,
      this.quantite,
      this.code,
      this.cadena,
      this.consommes,
      this.reference})
      : super._();

  @override
  ArticlesRecord rebuild(void Function(ArticlesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticlesRecordBuilder toBuilder() =>
      new ArticlesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticlesRecord &&
        nom == other.nom &&
        prixUnitaire == other.prixUnitaire &&
        quantite == other.quantite &&
        code == other.code &&
        cadena == other.cadena &&
        consommes == other.consommes &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nom.hashCode), prixUnitaire.hashCode),
                        quantite.hashCode),
                    code.hashCode),
                cadena.hashCode),
            consommes.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArticlesRecord')
          ..add('nom', nom)
          ..add('prixUnitaire', prixUnitaire)
          ..add('quantite', quantite)
          ..add('code', code)
          ..add('cadena', cadena)
          ..add('consommes', consommes)
          ..add('reference', reference))
        .toString();
  }
}

class ArticlesRecordBuilder
    implements Builder<ArticlesRecord, ArticlesRecordBuilder> {
  _$ArticlesRecord _$v;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  double _prixUnitaire;
  double get prixUnitaire => _$this._prixUnitaire;
  set prixUnitaire(double prixUnitaire) => _$this._prixUnitaire = prixUnitaire;

  double _quantite;
  double get quantite => _$this._quantite;
  set quantite(double quantite) => _$this._quantite = quantite;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  bool _cadena;
  bool get cadena => _$this._cadena;
  set cadena(bool cadena) => _$this._cadena = cadena;

  bool _consommes;
  bool get consommes => _$this._consommes;
  set consommes(bool consommes) => _$this._consommes = consommes;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ArticlesRecordBuilder() {
    ArticlesRecord._initializeBuilder(this);
  }

  ArticlesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _prixUnitaire = $v.prixUnitaire;
      _quantite = $v.quantite;
      _code = $v.code;
      _cadena = $v.cadena;
      _consommes = $v.consommes;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticlesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticlesRecord;
  }

  @override
  void update(void Function(ArticlesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ArticlesRecord build() {
    final _$result = _$v ??
        new _$ArticlesRecord._(
            nom: nom,
            prixUnitaire: prixUnitaire,
            quantite: quantite,
            code: code,
            cadena: cadena,
            consommes: consommes,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
