import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingRecord extends FirestoreRecord {
  BookingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "startdate" field.
  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  bool hasStartdate() => _startdate != null;

  // "rentee_phone_number" field.
  String? _renteePhoneNumber;
  String get renteePhoneNumber => _renteePhoneNumber ?? '';
  bool hasRenteePhoneNumber() => _renteePhoneNumber != null;

  // "is_delivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  // "car_ref" field.
  DocumentReference? _carRef;
  DocumentReference? get carRef => _carRef;
  bool hasCarRef() => _carRef != null;

  // "hostRef" field.
  DocumentReference? _hostRef;
  DocumentReference? get hostRef => _hostRef;
  bool hasHostRef() => _hostRef != null;

  // "is_paid" field.
  bool? _isPaid;
  bool get isPaid => _isPaid ?? false;
  bool hasIsPaid() => _isPaid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _enddate = snapshotData['enddate'] as DateTime?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _totalcost = castToType<double>(snapshotData['totalcost']);
    _numberofdays = castToType<int>(snapshotData['numberofdays']);
    _bookingStatus = snapshotData['booking_status'] as String?;
    _renteeName = snapshotData['rentee_name'] as String?;
    _renteeEmail = snapshotData['rentee_email'] as String?;
    _renteePhoto = snapshotData['rentee_photo'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _startdate = snapshotData['startdate'] as DateTime?;
    _renteePhoneNumber = snapshotData['rentee_phone_number'] as String?;
    _isDelivered = snapshotData['is_delivered'] as bool?;
    _carRef = snapshotData['car_ref'] as DocumentReference?;
    _hostRef = snapshotData['hostRef'] as DocumentReference?;
    _isPaid = snapshotData['is_paid'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('booking')
          : FirebaseFirestore.instance.collectionGroup('booking');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('booking').doc();

  static Stream<BookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingRecord.fromSnapshot(s));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingRecord.fromSnapshot(s));

  static BookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingRecordData({
  DateTime? enddate,
  double? subtotal,
  double? totalcost,
  int? numberofdays,
  String? bookingStatus,
  String? renteeName,
  String? renteeEmail,
  String? renteePhoto,
  DocumentReference? uid,
  DateTime? startdate,
  String? renteePhoneNumber,
  bool? isDelivered,
  DocumentReference? carRef,
  DocumentReference? hostRef,
  bool? isPaid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'enddate': enddate,
      'subtotal': subtotal,
      'totalcost': totalcost,
      'numberofdays': numberofdays,
      'booking_status': bookingStatus,
      'rentee_name': renteeName,
      'rentee_email': renteeEmail,
      'rentee_photo': renteePhoto,
      'uid': uid,
      'startdate': startdate,
      'rentee_phone_number': renteePhoneNumber,
      'is_delivered': isDelivered,
      'car_ref': carRef,
      'hostRef': hostRef,
      'is_paid': isPaid,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingRecordDocumentEquality implements Equality<BookingRecord> {
  const BookingRecordDocumentEquality();

  @override
  bool equals(BookingRecord? e1, BookingRecord? e2) {
    return e1?.enddate == e2?.enddate &&
        e1?.subtotal == e2?.subtotal &&
        e1?.totalcost == e2?.totalcost &&
        e1?.numberofdays == e2?.numberofdays &&
        e1?.bookingStatus == e2?.bookingStatus &&
        e1?.renteeName == e2?.renteeName &&
        e1?.renteeEmail == e2?.renteeEmail &&
        e1?.renteePhoto == e2?.renteePhoto &&
        e1?.uid == e2?.uid &&
        e1?.startdate == e2?.startdate &&
        e1?.renteePhoneNumber == e2?.renteePhoneNumber &&
        e1?.isDelivered == e2?.isDelivered &&
        e1?.carRef == e2?.carRef &&
        e1?.hostRef == e2?.hostRef &&
        e1?.isPaid == e2?.isPaid;
  }

  @override
  int hash(BookingRecord? e) => const ListEquality().hash([
        e?.enddate,
        e?.subtotal,
        e?.totalcost,
        e?.numberofdays,
        e?.bookingStatus,
        e?.renteeName,
        e?.renteeEmail,
        e?.renteePhoto,
        e?.uid,
        e?.startdate,
        e?.renteePhoneNumber,
        e?.isDelivered,
        e?.carRef,
        e?.hostRef,
        e?.isPaid
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingRecord;
}
