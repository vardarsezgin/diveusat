import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videos_record.g.dart';

abstract class VideosRecord
    implements Built<VideosRecord, VideosRecordBuilder> {
  static Serializer<VideosRecord> get serializer => _$videosRecordSerializer;

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

  static void _initializeBuilder(VideosRecordBuilder builder) => builder
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
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideosRecord._();
  factory VideosRecord([void Function(VideosRecordBuilder) updates]) =
      _$VideosRecord;

  static VideosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideosRecordData({
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
    VideosRecord.serializer,
    VideosRecord(
      (v) => v
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
