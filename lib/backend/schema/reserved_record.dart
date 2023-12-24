import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservedRecord extends FirestoreRecord {
  ReservedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Startdate" field.
  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  bool hasStartdate() => _startdate != null;

  // "enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  bool hasEnddate() => _enddate != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "totalcost" field.
  double? _totalcost;
  double get totalcost => _totalcost ?? 0.0;
  bool hasTotalcost() => _totalcost != null;

  // "numberofdays" field.
  int? _numberofdays;
  int get numberofdays => _numberofdays ?? 0;
  bool hasNumberofdays() => _numberofdays != null;

  // "booking_status" field.
  String? _bookingStatus;
  String get bookingStatus => _bookingStatus ?? '';
  bool hasBookingStatus() => _bookingStatus != null;

  // "rentee_name" field.
  String? _renteeName;
  String get renteeName => _renteeName ?? '';
  bool hasRenteeName() => _renteeName != null;

  // "rentee_email" field.
  String? _renteeEmail;
  String get renteeEmail => _renteeEmail ?? '';
  bool hasRenteeEmail() => _renteeEmail != null;

  // "rentee_photo" field.
  String? _renteePhoto;
  String get renteePhoto => _renteePhoto ?? '';
  bool hasRenteePhoto() => _renteePhoto != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "car_ref" field.
  DocumentReference? _carRef;
  DocumentReference? get carRef => _carRef;
  bool hasCarRef() => _carRef != null;

  // "hostRef" field.
  DocumentReference? _hostRef;
  DocumentReference? get hostRef => _hostRef;
  bool hasHostRef() => _hostRef != null;

  // "Active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startdate = snapshotData['Startdate'] as DateTime?;
    _enddate = snapshotData['enddate'] as DateTime?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _totalcost = castToType<double>(snapshotData['totalcost']);
    _numberofdays = castToType<int>(snapshotData['numberofdays']);
    _bookingStatus = snapshotData['booking_status'] as String?;
    _renteeName = snapshotData['rentee_name'] as String?;
    _renteeEmail = snapshotData['rentee_email'] as String?;
    _renteePhoto = snapshotData['rentee_photo'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _carRef = snapshotData['car_ref'] as DocumentReference?;
    _hostRef = snapshotData['hostRef'] as DocumentReference?;
    _active = snapshotData['Active'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reserved')
          : FirebaseFirestore.instance.collectionGroup('reserved');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('reserved').doc();

  static Stream<ReservedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservedRecord.fromSnapshot(s));

  static Future<ReservedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservedRecord.fromSnapshot(s));

  static ReservedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservedRecordData({
  DateTime? startdate,
  DateTime? enddate,
  double? subtotal,
  double? totalcost,
  int? numberofdays,
  String? bookingStatus,
  String? renteeName,
  String? renteeEmail,
  String? renteePhoto,
  DocumentReference? uid,
  DocumentReference? carRef,
  DocumentReference? hostRef,
  bool? active,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Startdate': startdate,
      'enddate': enddate,
      'subtotal': subtotal,
      'totalcost': totalcost,
      'numberofdays': numberofdays,
      'booking_status': bookingStatus,
      'rentee_name': renteeName,
      'rentee_email': renteeEmail,
      'rentee_photo': renteePhoto,
      'uid': uid,
      'car_ref': carRef,
      'hostRef': hostRef,
      'Active': active,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservedRecordDocumentEquality implements Equality<ReservedRecord> {
  const ReservedRecordDocumentEquality();

  @override
  bool equals(ReservedRecord? e1, ReservedRecord? e2) {
    return e1?.startdate == e2?.startdate &&
        e1?.enddate == e2?.enddate &&
        e1?.subtotal == e2?.subtotal &&
        e1?.totalcost == e2?.totalcost &&
        e1?.numberofdays == e2?.numberofdays &&
        e1?.bookingStatus == e2?.bookingStatus &&
        e1?.renteeName == e2?.renteeName &&
        e1?.renteeEmail == e2?.renteeEmail &&
        e1?.renteePhoto == e2?.renteePhoto &&
        e1?.uid == e2?.uid &&
        e1?.carRef == e2?.carRef &&
        e1?.hostRef == e2?.hostRef &&
        e1?.active == e2?.active;
  }

  @override
  int hash(ReservedRecord? e) => const ListEquality().hash([
        e?.startdate,
        e?.enddate,
        e?.subtotal,
        e?.totalcost,
        e?.numberofdays,
        e?.bookingStatus,
        e?.renteeName,
        e?.renteeEmail,
        e?.renteePhoto,
        e?.uid,
        e?.carRef,
        e?.hostRef,
        e?.active
      ]);

  @override
  bool isValidKey(Object? o) => o is ReservedRecord;
}
