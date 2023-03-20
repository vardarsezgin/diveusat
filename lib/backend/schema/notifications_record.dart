import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notifications_record.g.dart';

abstract class NotificationsRecord
    implements Built<NotificationsRecord, NotificationsRecordBuilder> {
  static Serializer<NotificationsRecord> get serializer =>
      _$notificationsRecordSerializer;

  DocumentReference? get author;

  String? get contact;

  String? get header;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'p_timestamps')
  DateTime? get pTimestamps;

  String? get text;

  DocumentReference? get authorImage;

  DocumentReference? get authorUsername;

  String? get organizator;

  DateTime? get lastEdit;

  DocumentReference? get authorMail;

  int? get likes;

  int? get comments;

  int? get participants;

  BuiltList<DocumentReference>? get participantList;

  String? get video;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotificationsRecordBuilder builder) => builder
    ..contact = ''
    ..header = ''
    ..image = ''
    ..text = ''
    ..organizator = ''
    ..likes = 0
    ..comments = 0
    ..participants = 0
    ..participantList = ListBuilder()
    ..video = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationsRecord._();
  factory NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =
      _$NotificationsRecord;

  static NotificationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationsRecordData({
  DocumentReference? author,
  String? contact,
  String? header,
  String? image,
  DateTime? pTimestamps,
  String? text,
  DocumentReference? authorImage,
  DocumentReference? authorUsername,
  String? organizator,
  DateTime? lastEdit,
  DocumentReference? authorMail,
  int? likes,
  int? comments,
  int? participants,
  String? video,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationsRecord.serializer,
    NotificationsRecord(
      (n) => n
        ..author = author
        ..contact = contact
        ..header = header
        ..image = image
        ..pTimestamps = pTimestamps
        ..text = text
        ..authorImage = authorImage
        ..authorUsername = authorUsername
        ..organizator = organizator
        ..lastEdit = lastEdit
        ..authorMail = authorMail
        ..likes = likes
        ..comments = comments
        ..participants = participants
        ..participantList = null
        ..video = video,
    ),
  );

  return firestoreData;
}
