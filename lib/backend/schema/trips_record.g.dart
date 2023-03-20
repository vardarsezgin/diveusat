// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trips_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TripsRecord> _$tripsRecordSerializer = new _$TripsRecordSerializer();

class _$TripsRecordSerializer implements StructuredSerializer<TripsRecord> {
  @override
  final Iterable<Type> types = const [TripsRecord, _$TripsRecord];
  @override
  final String wireName = 'TripsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TripsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.contact;
    if (value != null) {
      result
        ..add('contact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.header;
    if (value != null) {
      result
        ..add('header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pTimestamps;
    if (value != null) {
      result
        ..add('p_timestamps')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authorImage;
    if (value != null) {
      result
        ..add('authorImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.authorUsername;
    if (value != null) {
      result
        ..add('authorUsername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.organizator;
    if (value != null) {
      result
        ..add('organizator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastEdit;
    if (value != null) {
      result
        ..add('lastEdit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.authorMail;
    if (value != null) {
      result
        ..add('authorMail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.participants;
    if (value != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.participantList;
    if (value != null) {
      result
        ..add('participantList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventDates;
    if (value != null) {
      result
        ..add('eventDates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.eventType;
    if (value != null) {
      result
        ..add('eventType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventLocation;
    if (value != null) {
      result
        ..add('eventLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventPrice;
    if (value != null) {
      result
        ..add('eventPrice')
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
  TripsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TripsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'contact':
          result.contact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'header':
          result.header = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'p_timestamps':
          result.pTimestamps = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'authorImage':
          result.authorImage = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'authorUsername':
          result.authorUsername = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'organizator':
          result.organizator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastEdit':
          result.lastEdit = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'authorMail':
          result.authorMail = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'participants':
          result.participants = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'participantList':
          result.participantList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eventDates':
          result.eventDates = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'eventType':
          result.eventType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eventLocation':
          result.eventLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eventPrice':
          result.eventPrice = serializers.deserialize(value,
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

class _$TripsRecord extends TripsRecord {
  @override
  final DocumentReference<Object?>? author;
  @override
  final String? contact;
  @override
  final String? header;
  @override
  final String? image;
  @override
  final DateTime? pTimestamps;
  @override
  final String? text;
  @override
  final DocumentReference<Object?>? authorImage;
  @override
  final DocumentReference<Object?>? authorUsername;
  @override
  final String? organizator;
  @override
  final DateTime? lastEdit;
  @override
  final DocumentReference<Object?>? authorMail;
  @override
  final int? likes;
  @override
  final int? comments;
  @override
  final int? participants;
  @override
  final BuiltList<DocumentReference<Object?>>? participantList;
  @override
  final String? video;
  @override
  final DateTime? eventDates;
  @override
  final String? eventType;
  @override
  final String? eventLocation;
  @override
  final String? eventPrice;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TripsRecord([void Function(TripsRecordBuilder)? updates]) =>
      (new TripsRecordBuilder()..update(updates))._build();

  _$TripsRecord._(
      {this.author,
      this.contact,
      this.header,
      this.image,
      this.pTimestamps,
      this.text,
      this.authorImage,
      this.authorUsername,
      this.organizator,
      this.lastEdit,
      this.authorMail,
      this.likes,
      this.comments,
      this.participants,
      this.participantList,
      this.video,
      this.eventDates,
      this.eventType,
      this.eventLocation,
      this.eventPrice,
      this.ffRef})
      : super._();

  @override
  TripsRecord rebuild(void Function(TripsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripsRecordBuilder toBuilder() => new TripsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripsRecord &&
        author == other.author &&
        contact == other.contact &&
        header == other.header &&
        image == other.image &&
        pTimestamps == other.pTimestamps &&
        text == other.text &&
        authorImage == other.authorImage &&
        authorUsername == other.authorUsername &&
        organizator == other.organizator &&
        lastEdit == other.lastEdit &&
        authorMail == other.authorMail &&
        likes == other.likes &&
        comments == other.comments &&
        participants == other.participants &&
        participantList == other.participantList &&
        video == other.video &&
        eventDates == other.eventDates &&
        eventType == other.eventType &&
        eventLocation == other.eventLocation &&
        eventPrice == other.eventPrice &&
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
                                                                            $jc($jc($jc(0, author.hashCode), contact.hashCode),
                                                                                header.hashCode),
                                                                            image.hashCode),
                                                                        pTimestamps.hashCode),
                                                                    text.hashCode),
                                                                authorImage.hashCode),
                                                            authorUsername.hashCode),
                                                        organizator.hashCode),
                                                    lastEdit.hashCode),
                                                authorMail.hashCode),
                                            likes.hashCode),
                                        comments.hashCode),
                                    participants.hashCode),
                                participantList.hashCode),
                            video.hashCode),
                        eventDates.hashCode),
                    eventType.hashCode),
                eventLocation.hashCode),
            eventPrice.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripsRecord')
          ..add('author', author)
          ..add('contact', contact)
          ..add('header', header)
          ..add('image', image)
          ..add('pTimestamps', pTimestamps)
          ..add('text', text)
          ..add('authorImage', authorImage)
          ..add('authorUsername', authorUsername)
          ..add('organizator', organizator)
          ..add('lastEdit', lastEdit)
          ..add('authorMail', authorMail)
          ..add('likes', likes)
          ..add('comments', comments)
          ..add('participants', participants)
          ..add('participantList', participantList)
          ..add('video', video)
          ..add('eventDates', eventDates)
          ..add('eventType', eventType)
          ..add('eventLocation', eventLocation)
          ..add('eventPrice', eventPrice)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TripsRecordBuilder implements Builder<TripsRecord, TripsRecordBuilder> {
  _$TripsRecord? _$v;

  DocumentReference<Object?>? _author;
  DocumentReference<Object?>? get author => _$this._author;
  set author(DocumentReference<Object?>? author) => _$this._author = author;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DateTime? _pTimestamps;
  DateTime? get pTimestamps => _$this._pTimestamps;
  set pTimestamps(DateTime? pTimestamps) => _$this._pTimestamps = pTimestamps;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DocumentReference<Object?>? _authorImage;
  DocumentReference<Object?>? get authorImage => _$this._authorImage;
  set authorImage(DocumentReference<Object?>? authorImage) =>
      _$this._authorImage = authorImage;

  DocumentReference<Object?>? _authorUsername;
  DocumentReference<Object?>? get authorUsername => _$this._authorUsername;
  set authorUsername(DocumentReference<Object?>? authorUsername) =>
      _$this._authorUsername = authorUsername;

  String? _organizator;
  String? get organizator => _$this._organizator;
  set organizator(String? organizator) => _$this._organizator = organizator;

  DateTime? _lastEdit;
  DateTime? get lastEdit => _$this._lastEdit;
  set lastEdit(DateTime? lastEdit) => _$this._lastEdit = lastEdit;

  DocumentReference<Object?>? _authorMail;
  DocumentReference<Object?>? get authorMail => _$this._authorMail;
  set authorMail(DocumentReference<Object?>? authorMail) =>
      _$this._authorMail = authorMail;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  int? _participants;
  int? get participants => _$this._participants;
  set participants(int? participants) => _$this._participants = participants;

  ListBuilder<DocumentReference<Object?>>? _participantList;
  ListBuilder<DocumentReference<Object?>> get participantList =>
      _$this._participantList ??= new ListBuilder<DocumentReference<Object?>>();
  set participantList(
          ListBuilder<DocumentReference<Object?>>? participantList) =>
      _$this._participantList = participantList;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  DateTime? _eventDates;
  DateTime? get eventDates => _$this._eventDates;
  set eventDates(DateTime? eventDates) => _$this._eventDates = eventDates;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(String? eventType) => _$this._eventType = eventType;

  String? _eventLocation;
  String? get eventLocation => _$this._eventLocation;
  set eventLocation(String? eventLocation) =>
      _$this._eventLocation = eventLocation;

  String? _eventPrice;
  String? get eventPrice => _$this._eventPrice;
  set eventPrice(String? eventPrice) => _$this._eventPrice = eventPrice;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TripsRecordBuilder() {
    TripsRecord._initializeBuilder(this);
  }

  TripsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author;
      _contact = $v.contact;
      _header = $v.header;
      _image = $v.image;
      _pTimestamps = $v.pTimestamps;
      _text = $v.text;
      _authorImage = $v.authorImage;
      _authorUsername = $v.authorUsername;
      _organizator = $v.organizator;
      _lastEdit = $v.lastEdit;
      _authorMail = $v.authorMail;
      _likes = $v.likes;
      _comments = $v.comments;
      _participants = $v.participants;
      _participantList = $v.participantList?.toBuilder();
      _video = $v.video;
      _eventDates = $v.eventDates;
      _eventType = $v.eventType;
      _eventLocation = $v.eventLocation;
      _eventPrice = $v.eventPrice;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TripsRecord;
  }

  @override
  void update(void Function(TripsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripsRecord build() => _build();

  _$TripsRecord _build() {
    _$TripsRecord _$result;
    try {
      _$result = _$v ??
          new _$TripsRecord._(
              author: author,
              contact: contact,
              header: header,
              image: image,
              pTimestamps: pTimestamps,
              text: text,
              authorImage: authorImage,
              authorUsername: authorUsername,
              organizator: organizator,
              lastEdit: lastEdit,
              authorMail: authorMail,
              likes: likes,
              comments: comments,
              participants: participants,
              participantList: _participantList?.build(),
              video: video,
              eventDates: eventDates,
              eventType: eventType,
              eventLocation: eventLocation,
              eventPrice: eventPrice,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'participantList';
        _participantList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TripsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
