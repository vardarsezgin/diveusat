import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get uid;

  String? get name;

  bool? get isVerified;

  String? get username;

  String? get userImage;

  String? get headerImage;

  BuiltList<String>? get userPhotos;

  BuiltList<String>? get userVideos;

  LatLng? get userLocation;

  String? get userBio;

  DateTime? get userTimestamp;

  String? get userRole;

  String? get email;

  String? get mailAddress;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..uid = ''
    ..name = ''
    ..isVerified = false
    ..username = ''
    ..userImage = ''
    ..headerImage = ''
    ..userPhotos = ListBuilder()
    ..userVideos = ListBuilder()
    ..userBio = ''
    ..userRole = ''
    ..email = ''
    ..mailAddress = ''
    ..displayName = ''
    ..phoneNumber = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? uid,
  String? name,
  bool? isVerified,
  String? username,
  String? userImage,
  String? headerImage,
  LatLng? userLocation,
  String? userBio,
  DateTime? userTimestamp,
  String? userRole,
  String? email,
  String? mailAddress,
  String? displayName,
  String? phoneNumber,
  DateTime? createdTime,
  String? photoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..uid = uid
        ..name = name
        ..isVerified = isVerified
        ..username = username
        ..userImage = userImage
        ..headerImage = headerImage
        ..userPhotos = null
        ..userVideos = null
        ..userLocation = userLocation
        ..userBio = userBio
        ..userTimestamp = userTimestamp
        ..userRole = userRole
        ..email = email
        ..mailAddress = mailAddress
        ..displayName = displayName
        ..phoneNumber = phoneNumber
        ..createdTime = createdTime
        ..photoUrl = photoUrl,
    ),
  );

  return firestoreData;
}
