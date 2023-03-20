// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('isVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userImage;
    if (value != null) {
      result
        ..add('userImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.headerImage;
    if (value != null) {
      result
        ..add('headerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userPhotos;
    if (value != null) {
      result
        ..add('userPhotos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.userVideos;
    if (value != null) {
      result
        ..add('userVideos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.userLocation;
    if (value != null) {
      result
        ..add('userLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.userBio;
    if (value != null) {
      result
        ..add('userBio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userTimestamp;
    if (value != null) {
      result
        ..add('userTimestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userRole;
    if (value != null) {
      result
        ..add('userRole')
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
    value = object.mailAddress;
    if (value != null) {
      result
        ..add('mailAddress')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isVerified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userImage':
          result.userImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'headerImage':
          result.headerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userPhotos':
          result.userPhotos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'userVideos':
          result.userVideos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'userLocation':
          result.userLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'userBio':
          result.userBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userTimestamp':
          result.userTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'userRole':
          result.userRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mailAddress':
          result.mailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? uid;
  @override
  final String? name;
  @override
  final bool? isVerified;
  @override
  final String? username;
  @override
  final String? userImage;
  @override
  final String? headerImage;
  @override
  final BuiltList<String>? userPhotos;
  @override
  final BuiltList<String>? userVideos;
  @override
  final LatLng? userLocation;
  @override
  final String? userBio;
  @override
  final DateTime? userTimestamp;
  @override
  final String? userRole;
  @override
  final String? email;
  @override
  final String? mailAddress;
  @override
  final String? displayName;
  @override
  final String? phoneNumber;
  @override
  final DateTime? createdTime;
  @override
  final String? photoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.uid,
      this.name,
      this.isVerified,
      this.username,
      this.userImage,
      this.headerImage,
      this.userPhotos,
      this.userVideos,
      this.userLocation,
      this.userBio,
      this.userTimestamp,
      this.userRole,
      this.email,
      this.mailAddress,
      this.displayName,
      this.phoneNumber,
      this.createdTime,
      this.photoUrl,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        uid == other.uid &&
        name == other.name &&
        isVerified == other.isVerified &&
        username == other.username &&
        userImage == other.userImage &&
        headerImage == other.headerImage &&
        userPhotos == other.userPhotos &&
        userVideos == other.userVideos &&
        userLocation == other.userLocation &&
        userBio == other.userBio &&
        userTimestamp == other.userTimestamp &&
        userRole == other.userRole &&
        email == other.email &&
        mailAddress == other.mailAddress &&
        displayName == other.displayName &&
        phoneNumber == other.phoneNumber &&
        createdTime == other.createdTime &&
        photoUrl == other.photoUrl &&
        ffRef == other.ffRef;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                uid
                                                                                    .hashCode),
                                                                            name
                                                                                .hashCode),
                                                                        isVerified
                                                                            .hashCode),
                                                                    username
                                                                        .hashCode),
                                                                userImage
                                                                    .hashCode),
                                                            headerImage
                                                                .hashCode),
                                                        userPhotos.hashCode),
                                                    userVideos.hashCode),
                                                userLocation.hashCode),
                                            userBio.hashCode),
                                        userTimestamp.hashCode),
                                    userRole.hashCode),
                                email.hashCode),
                            mailAddress.hashCode),
                        displayName.hashCode),
                    phoneNumber.hashCode),
                createdTime.hashCode),
            photoUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('uid', uid)
          ..add('name', name)
          ..add('isVerified', isVerified)
          ..add('username', username)
          ..add('userImage', userImage)
          ..add('headerImage', headerImage)
          ..add('userPhotos', userPhotos)
          ..add('userVideos', userVideos)
          ..add('userLocation', userLocation)
          ..add('userBio', userBio)
          ..add('userTimestamp', userTimestamp)
          ..add('userRole', userRole)
          ..add('email', email)
          ..add('mailAddress', mailAddress)
          ..add('displayName', displayName)
          ..add('phoneNumber', phoneNumber)
          ..add('createdTime', createdTime)
          ..add('photoUrl', photoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _userImage;
  String? get userImage => _$this._userImage;
  set userImage(String? userImage) => _$this._userImage = userImage;

  String? _headerImage;
  String? get headerImage => _$this._headerImage;
  set headerImage(String? headerImage) => _$this._headerImage = headerImage;

  ListBuilder<String>? _userPhotos;
  ListBuilder<String> get userPhotos =>
      _$this._userPhotos ??= new ListBuilder<String>();
  set userPhotos(ListBuilder<String>? userPhotos) =>
      _$this._userPhotos = userPhotos;

  ListBuilder<String>? _userVideos;
  ListBuilder<String> get userVideos =>
      _$this._userVideos ??= new ListBuilder<String>();
  set userVideos(ListBuilder<String>? userVideos) =>
      _$this._userVideos = userVideos;

  LatLng? _userLocation;
  LatLng? get userLocation => _$this._userLocation;
  set userLocation(LatLng? userLocation) => _$this._userLocation = userLocation;

  String? _userBio;
  String? get userBio => _$this._userBio;
  set userBio(String? userBio) => _$this._userBio = userBio;

  DateTime? _userTimestamp;
  DateTime? get userTimestamp => _$this._userTimestamp;
  set userTimestamp(DateTime? userTimestamp) =>
      _$this._userTimestamp = userTimestamp;

  String? _userRole;
  String? get userRole => _$this._userRole;
  set userRole(String? userRole) => _$this._userRole = userRole;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _mailAddress;
  String? get mailAddress => _$this._mailAddress;
  set mailAddress(String? mailAddress) => _$this._mailAddress = mailAddress;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _name = $v.name;
      _isVerified = $v.isVerified;
      _username = $v.username;
      _userImage = $v.userImage;
      _headerImage = $v.headerImage;
      _userPhotos = $v.userPhotos?.toBuilder();
      _userVideos = $v.userVideos?.toBuilder();
      _userLocation = $v.userLocation;
      _userBio = $v.userBio;
      _userTimestamp = $v.userTimestamp;
      _userRole = $v.userRole;
      _email = $v.email;
      _mailAddress = $v.mailAddress;
      _displayName = $v.displayName;
      _phoneNumber = $v.phoneNumber;
      _createdTime = $v.createdTime;
      _photoUrl = $v.photoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              uid: uid,
              name: name,
              isVerified: isVerified,
              username: username,
              userImage: userImage,
              headerImage: headerImage,
              userPhotos: _userPhotos?.build(),
              userVideos: _userVideos?.build(),
              userLocation: userLocation,
              userBio: userBio,
              userTimestamp: userTimestamp,
              userRole: userRole,
              email: email,
              mailAddress: mailAddress,
              displayName: displayName,
              phoneNumber: phoneNumber,
              createdTime: createdTime,
              photoUrl: photoUrl,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userPhotos';
        _userPhotos?.build();
        _$failedField = 'userVideos';
        _userVideos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
