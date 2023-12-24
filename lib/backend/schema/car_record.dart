import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarRecord extends FirestoreRecord {
  CarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "availability_status" field.
  String? _availabilityStatus;
  String get availabilityStatus => _availabilityStatus ?? '';
  bool hasAvailabilityStatus() => _availabilityStatus != null;

  // "booking_status" field.
  String? _bookingStatus;
  String get bookingStatus => _bookingStatus ?? '';
  bool hasBookingStatus() => _bookingStatus != null;

  // "brand_name" field.
  String? _brandName;
  String get brandName => _brandName ?? '';
  bool hasBrandName() => _brandName != null;

  // "car_back" field.
  String? _carBack;
  String get carBack => _carBack ?? '';
  bool hasCarBack() => _carBack != null;

  // "car_front" field.
  String? _carFront;
  String get carFront => _carFront ?? '';
  bool hasCarFront() => _carFront != null;

  // "car_color" field.
  Color? _carColor;
  Color? get carColor => _carColor;
  bool hasCarColor() => _carColor != null;

  // "car_id" field.
  String? _carId;
  String get carId => _carId ?? '';
  bool hasCarId() => _carId != null;

  // "car_name" field.
  String? _carName;
  String get carName => _carName ?? '';
  bool hasCarName() => _carName != null;

  // "car_status" field.
  String? _carStatus;
  String get carStatus => _carStatus ?? '';
  bool hasCarStatus() => _carStatus != null;

  // "car_video" field.
  String? _carVideo;
  String get carVideo => _carVideo ?? '';
  bool hasCarVideo() => _carVideo != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  bool hasDistrict() => _district != null;

  // "fuel_type" field.
  String? _fuelType;
  String get fuelType => _fuelType ?? '';
  bool hasFuelType() => _fuelType != null;

  // "listing_status" field.
  String? _listingStatus;
  String get listingStatus => _listingStatus ?? '';
  bool hasListingStatus() => _listingStatus != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "plate_number" field.
  String? _plateNumber;
  String get plateNumber => _plateNumber ?? '';
  bool hasPlateNumber() => _plateNumber != null;

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "vendor_email" field.
  String? _vendorEmail;
  String get vendorEmail => _vendorEmail ?? '';
  bool hasVendorEmail() => _vendorEmail != null;

  // "vendor_photo" field.
  String? _vendorPhoto;
  String get vendorPhoto => _vendorPhoto ?? '';
  bool hasVendorPhoto() => _vendorPhoto != null;

  // "transmission_type" field.
  String? _transmissionType;
  String get transmissionType => _transmissionType ?? '';
  bool hasTransmissionType() => _transmissionType != null;

  // "profile_photo" field.
  String? _profilePhoto;
  String get profilePhoto => _profilePhoto ?? '';
  bool hasProfilePhoto() => _profilePhoto != null;

  // "car_specifications" field.
  List<String>? _carSpecifications;
  List<String> get carSpecifications => _carSpecifications ?? const [];
  bool hasCarSpecifications() => _carSpecifications != null;

  // "cost_per_day" field.
  double? _costPerDay;
  double get costPerDay => _costPerDay ?? 0.0;
  bool hasCostPerDay() => _costPerDay != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  bool hasEnddate() => _enddate != null;

  // "numberofdays" field.
  int? _numberofdays;
  int get numberofdays => _numberofdays ?? 0;
  bool hasNumberofdays() => _numberofdays != null;

  // "vendor_phone_number" field.
  String? _vendorPhoneNumber;
  String get vendorPhoneNumber => _vendorPhoneNumber ?? '';
  bool hasVendorPhoneNumber() => _vendorPhoneNumber != null;

  // "car_photos" field.
  List<String>? _carPhotos;
  List<String> get carPhotos => _carPhotos ?? const [];
  bool hasCarPhotos() => _carPhotos != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "vendor_description" field.
  String? _vendorDescription;
  String get vendorDescription => _vendorDescription ?? '';
  bool hasVendorDescription() => _vendorDescription != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _availabilityStatus = snapshotData['availability_status'] as String?;
    _bookingStatus = snapshotData['booking_status'] as String?;
    _brandName = snapshotData['brand_name'] as String?;
    _carBack = snapshotData['car_back'] as String?;
    _carFront = snapshotData['car_front'] as String?;
    _carColor = getSchemaColor(snapshotData['car_color']);
    _carId = snapshotData['car_id'] as String?;
    _carName = snapshotData['car_name'] as String?;
    _carStatus = snapshotData['car_status'] as String?;
    _carVideo = snapshotData['car_video'] as String?;
    _description = snapshotData['description'] as String?;
    _district = snapshotData['district'] as String?;
    _fuelType = snapshotData['fuel_type'] as String?;
    _listingStatus = snapshotData['listing_status'] as String?;
    _location = snapshotData['location'] as String?;
    _plateNumber = snapshotData['plate_number'] as String?;
    _vendorName = snapshotData['vendor_name'] as String?;
    _vendorEmail = snapshotData['vendor_email'] as String?;
    _vendorPhoto = snapshotData['vendor_photo'] as String?;
    _transmissionType = snapshotData['transmission_type'] as String?;
    _profilePhoto = snapshotData['profile_photo'] as String?;
    _carSpecifications = getDataList(snapshotData['car_specifications']);
    _costPerDay = castToType<double>(snapshotData['cost_per_day']);
    _uid = snapshotData['uid'] as DocumentReference?;
    _enddate = snapshotData['enddate'] as DateTime?;
    _numberofdays = castToType<int>(snapshotData['numberofdays']);
    _vendorPhoneNumber = snapshotData['vendor_phone_number'] as String?;
    _carPhotos = getDataList(snapshotData['car_photos']);
    _note = snapshotData['note'] as String?;
    _vendorDescription = snapshotData['vendor_description'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Car');

  static Stream<CarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarRecord.fromSnapshot(s));

  static Future<CarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarRecord.fromSnapshot(s));

  static CarRecord fromSnapshot(DocumentSnapshot snapshot) => CarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarRecordData({
  String? availabilityStatus,
  String? bookingStatus,
  String? brandName,
  String? carBack,
  String? carFront,
  Color? carColor,
  String? carId,
  String? carName,
  String? carStatus,
  String? carVideo,
  String? description,
  String? district,
  String? fuelType,
  String? listingStatus,
  String? location,
  String? plateNumber,
  String? vendorName,
  String? vendorEmail,
  String? vendorPhoto,
  String? transmissionType,
  String? profilePhoto,
  double? costPerDay,
  DocumentReference? uid,
  DateTime? enddate,
  int? numberofdays,
  String? vendorPhoneNumber,
  String? note,
  String? vendorDescription,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'availability_status': availabilityStatus,
      'booking_status': bookingStatus,
      'brand_name': brandName,
      'car_back': carBack,
      'car_front': carFront,
      'car_color': carColor,
      'car_id': carId,
      'car_name': carName,
      'car_status': carStatus,
      'car_video': carVideo,
      'description': description,
      'district': district,
      'fuel_type': fuelType,
      'listing_status': listingStatus,
      'location': location,
      'plate_number': plateNumber,
      'vendor_name': vendorName,
      'vendor_email': vendorEmail,
      'vendor_photo': vendorPhoto,
      'transmission_type': transmissionType,
      'profile_photo': profilePhoto,
      'cost_per_day': costPerDay,
      'uid': uid,
      'enddate': enddate,
      'numberofdays': numberofdays,
      'vendor_phone_number': vendorPhoneNumber,
      'note': note,
      'vendor_description': vendorDescription,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarRecordDocumentEquality implements Equality<CarRecord> {
  const CarRecordDocumentEquality();

  @override
  bool equals(CarRecord? e1, CarRecord? e2) {
    const listEquality = ListEquality();
    return e1?.availabilityStatus == e2?.availabilityStatus &&
        e1?.bookingStatus == e2?.bookingStatus &&
        e1?.brandName == e2?.brandName &&
        e1?.carBack == e2?.carBack &&
        e1?.carFront == e2?.carFront &&
        e1?.carColor == e2?.carColor &&
        e1?.carId == e2?.carId &&
        e1?.carName == e2?.carName &&
        e1?.carStatus == e2?.carStatus &&
        e1?.carVideo == e2?.carVideo &&
        e1?.description == e2?.description &&
        e1?.district == e2?.district &&
        e1?.fuelType == e2?.fuelType &&
        e1?.listingStatus == e2?.listingStatus &&
        e1?.location == e2?.location &&
        e1?.plateNumber == e2?.plateNumber &&
        e1?.vendorName == e2?.vendorName &&
        e1?.vendorEmail == e2?.vendorEmail &&
        e1?.vendorPhoto == e2?.vendorPhoto &&
        e1?.transmissionType == e2?.transmissionType &&
        e1?.profilePhoto == e2?.profilePhoto &&
        listEquality.equals(e1?.carSpecifications, e2?.carSpecifications) &&
        e1?.costPerDay == e2?.costPerDay &&
        e1?.uid == e2?.uid &&
        e1?.enddate == e2?.enddate &&
        e1?.numberofdays == e2?.numberofdays &&
        e1?.vendorPhoneNumber == e2?.vendorPhoneNumber &&
        listEquality.equals(e1?.carPhotos, e2?.carPhotos) &&
        e1?.note == e2?.note &&
        e1?.vendorDescription == e2?.vendorDescription &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(CarRecord? e) => const ListEquality().hash([
        e?.availabilityStatus,
        e?.bookingStatus,
        e?.brandName,
        e?.carBack,
        e?.carFront,
        e?.carColor,
        e?.carId,
        e?.carName,
        e?.carStatus,
        e?.carVideo,
        e?.description,
        e?.district,
        e?.fuelType,
        e?.listingStatus,
        e?.location,
        e?.plateNumber,
        e?.vendorName,
        e?.vendorEmail,
        e?.vendorPhoto,
        e?.transmissionType,
        e?.profilePhoto,
        e?.carSpecifications,
        e?.costPerDay,
        e?.uid,
        e?.enddate,
        e?.numberofdays,
        e?.vendorPhoneNumber,
        e?.carPhotos,
        e?.note,
        e?.vendorDescription,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is CarRecord;
}
