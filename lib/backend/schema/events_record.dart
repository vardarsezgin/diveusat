import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

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

  DateTime? get eventDates;

  String? get eventType;

  String? get eventLocation;

  String? get eventPrice;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..contact = ''
    ..header = ''
    ..image = ''
    ..text = ''
    ..organizator = ''
    ..likes = 0
    ..comments = 0
    ..participants = 0
    ..participantList = ListBuilder()
    ..video = ''
    ..eventType = ''
    ..eventLocation = ''
    ..eventPrice = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventsRecordData({
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
  DateTime? eventDates,
  String? eventType,
  String? eventLocation,
  String? eventPrice,
}) {
  final firestoreData = serializers.toFirestore(
    EventsRecord.serializer,
    EventsRecord(
      (e) => e
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
        ..video = video
        ..eventDates = eventDates
        ..eventType = eventType
        ..eventLocation = eventLocation
        ..eventPrice = eventPrice,
    ),
  );

  return firestoreData;
}
