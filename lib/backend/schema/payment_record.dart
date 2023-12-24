import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentRecord extends FirestoreRecord {
  PaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "car_name" field.
  String? _carName;
  String get carName => _carName ?? '';
  bool hasCarName() => _carName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "profile_photo" field.
  DocumentReference? _profilePhoto;
  DocumentReference? get profilePhoto => _profilePhoto;
  bool hasProfilePhoto() => _profilePhoto != null;

  // "rentee_name" field.
  String? _renteeName;
  String get renteeName => _renteeName ?? '';
  bool hasRenteeName() => _renteeName != null;

  // "rentee_phone_number" field.
  String? _renteePhoneNumber;
  String get renteePhoneNumber => _renteePhoneNumber ?? '';
  bool hasRenteePhoneNumber() => _renteePhoneNumber != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "vendor_email" field.
  String? _vendorEmail;
  String get vendorEmail => _vendorEmail ?? '';
  bool hasVendorEmail() => _vendorEmail != null;

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "vendor_phone_number" field.
  String? _vendorPhoneNumber;
  String get vendorPhoneNumber => _vendorPhoneNumber ?? '';
  bool hasVendorPhoneNumber() => _vendorPhoneNumber != null;

  // "rentee_photo" field.
  String? _renteePhoto;
  String get renteePhoto => _renteePhoto ?? '';
  bool hasRenteePhoto() => _renteePhoto != null;

  // "vendor_photo" field.
  String? _vendorPhoto;
  String get vendorPhoto => _vendorPhoto ?? '';
  bool hasVendorPhoto() => _vendorPhoto != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  void _initializeFields() {
    _carName = snapshotData['car_name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _profilePhoto = snapshotData['profile_photo'] as DocumentReference?;
    _renteeName = snapshotData['rentee_name'] as String?;
    _renteePhoneNumber = snapshotData['rentee_phone_number'] as String?;
    _status = snapshotData['status'] as String?;
    _vendorEmail = snapshotData['vendor_email'] as String?;
    _vendorName = snapshotData['vendor_name'] as String?;
    _vendorPhoneNumber = snapshotData['vendor_phone_number'] as String?;
    _renteePhoto = snapshotData['rentee_photo'] as String?;
    _vendorPhoto = snapshotData['vendor_photo'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentRecord.fromSnapshot(s));

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentRecord.fromSnapshot(s));

  static PaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentRecordData({
  String? carName,
  DateTime? createdAt,
  DocumentReference? profilePhoto,
  String? renteeName,
  String? renteePhoneNumber,
  String? status,
  String? vendorEmail,
  String? vendorName,
  String? vendorPhoneNumber,
  String? renteePhoto,
  String? vendorPhoto,
  double? amount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'car_name': carName,
      'created_at': createdAt,
      'profile_photo': profilePhoto,
      'rentee_name': renteeName,
      'rentee_phone_number': renteePhoneNumber,
      'status': status,
      'vendor_email': vendorEmail,
      'vendor_name': vendorName,
      'vendor_phone_number': vendorPhoneNumber,
      'rentee_photo': renteePhoto,
      'vendor_photo': vendorPhoto,
      'amount': amount,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentRecord? e1, PaymentRecord? e2) {
    return e1?.carName == e2?.carName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.profilePhoto == e2?.profilePhoto &&
        e1?.renteeName == e2?.renteeName &&
        e1?.renteePhoneNumber == e2?.renteePhoneNumber &&
        e1?.status == e2?.status &&
        e1?.vendorEmail == e2?.vendorEmail &&
        e1?.vendorName == e2?.vendorName &&
        e1?.vendorPhoneNumber == e2?.vendorPhoneNumber &&
        e1?.renteePhoto == e2?.renteePhoto &&
        e1?.vendorPhoto == e2?.vendorPhoto &&
        e1?.amount == e2?.amount;
  }

  @override
  int hash(PaymentRecord? e) => const ListEquality().hash([
        e?.carName,
        e?.createdAt,
        e?.profilePhoto,
        e?.renteeName,
        e?.renteePhoneNumber,
        e?.status,
        e?.vendorEmail,
        e?.vendorName,
        e?.vendorPhoneNumber,
        e?.renteePhoto,
        e?.vendorPhoto,
        e?.amount
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentRecord;
}
