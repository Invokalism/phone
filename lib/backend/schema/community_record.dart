import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityRecord extends FirestoreRecord {
  CommunityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "postTitle" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "photoPost" field.
  String? _photoPost;
  String get photoPost => _photoPost ?? '';
  bool hasPhotoPost() => _photoPost != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _content = snapshotData['content'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _postTitle = snapshotData['postTitle'] as String?;
    _photoPost = snapshotData['photoPost'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('community');

  static Stream<CommunityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityRecord.fromSnapshot(s));

  static Future<CommunityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityRecord.fromSnapshot(s));

  static CommunityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityRecordData({
  String? uid,
  String? content,
  DateTime? date,
  String? postTitle,
  String? photoPost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'content': content,
      'date': date,
      'postTitle': postTitle,
      'photoPost': photoPost,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityRecordDocumentEquality implements Equality<CommunityRecord> {
  const CommunityRecordDocumentEquality();

  @override
  bool equals(CommunityRecord? e1, CommunityRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.content == e2?.content &&
        e1?.date == e2?.date &&
        e1?.postTitle == e2?.postTitle &&
        e1?.photoPost == e2?.photoPost;
  }

  @override
  int hash(CommunityRecord? e) => const ListEquality()
      .hash([e?.uid, e?.content, e?.date, e?.postTitle, e?.photoPost]);

  @override
  bool isValidKey(Object? o) => o is CommunityRecord;
}
