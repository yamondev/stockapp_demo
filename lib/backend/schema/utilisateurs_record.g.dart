// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utilisateurs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UtilisateursRecord> _$utilisateursRecordSerializer =
    new _$UtilisateursRecordSerializer();

class _$UtilisateursRecordSerializer
    implements StructuredSerializer<UtilisateursRecord> {
  @override
  final Iterable<Type> types = const [UtilisateursRecord, _$UtilisateursRecord];
  @override
  final String wireName = 'UtilisateursRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UtilisateursRecord object,
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
    value = object.motDePasse;
    if (value != null) {
      result
        ..add('mot_de_passe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fonction;
    if (value != null) {
      result
        ..add('fonction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.corpsDeMetier;
    if (value != null) {
      result
        ..add('corps_de_metier')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
  UtilisateursRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UtilisateursRecordBuilder();

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
        case 'mot_de_passe':
          result.motDePasse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fonction':
          result.fonction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'corps_de_metier':
          result.corpsDeMetier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
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

class _$UtilisateursRecord extends UtilisateursRecord {
  @override
  final String nom;
  @override
  final String motDePasse;
  @override
  final String fonction;
  @override
  final String corpsDeMetier;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final DocumentReference<Object> reference;

  factory _$UtilisateursRecord(
          [void Function(UtilisateursRecordBuilder) updates]) =>
      (new UtilisateursRecordBuilder()..update(updates)).build();

  _$UtilisateursRecord._(
      {this.nom,
      this.motDePasse,
      this.fonction,
      this.corpsDeMetier,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  UtilisateursRecord rebuild(
          void Function(UtilisateursRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UtilisateursRecordBuilder toBuilder() =>
      new UtilisateursRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UtilisateursRecord &&
        nom == other.nom &&
        motDePasse == other.motDePasse &&
        fonction == other.fonction &&
        corpsDeMetier == other.corpsDeMetier &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, nom.hashCode),
                                            motDePasse.hashCode),
                                        fonction.hashCode),
                                    corpsDeMetier.hashCode),
                                email.hashCode),
                            displayName.hashCode),
                        photoUrl.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UtilisateursRecord')
          ..add('nom', nom)
          ..add('motDePasse', motDePasse)
          ..add('fonction', fonction)
          ..add('corpsDeMetier', corpsDeMetier)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('reference', reference))
        .toString();
  }
}

class UtilisateursRecordBuilder
    implements Builder<UtilisateursRecord, UtilisateursRecordBuilder> {
  _$UtilisateursRecord _$v;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _motDePasse;
  String get motDePasse => _$this._motDePasse;
  set motDePasse(String motDePasse) => _$this._motDePasse = motDePasse;

  String _fonction;
  String get fonction => _$this._fonction;
  set fonction(String fonction) => _$this._fonction = fonction;

  String _corpsDeMetier;
  String get corpsDeMetier => _$this._corpsDeMetier;
  set corpsDeMetier(String corpsDeMetier) =>
      _$this._corpsDeMetier = corpsDeMetier;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UtilisateursRecordBuilder() {
    UtilisateursRecord._initializeBuilder(this);
  }

  UtilisateursRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _motDePasse = $v.motDePasse;
      _fonction = $v.fonction;
      _corpsDeMetier = $v.corpsDeMetier;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UtilisateursRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UtilisateursRecord;
  }

  @override
  void update(void Function(UtilisateursRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UtilisateursRecord build() {
    final _$result = _$v ??
        new _$UtilisateursRecord._(
            nom: nom,
            motDePasse: motDePasse,
            fonction: fonction,
            corpsDeMetier: corpsDeMetier,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
