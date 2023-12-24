import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  bool hasDistrict() => _district != null;

  // "is_host" field.
  bool? _isHost;
  bool get isHost => _isHost ?? false;
  bool hasIsHost() => _isHost != null;

  // "is_admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "user_status" field.
  String? _userStatus;
  String get userStatus => _userStatus ?? '';
  bool hasUserStatus() => _userStatus != null;

  // "user_type" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "user_refs" field.
  List<DocumentReference>? _userRefs;
  List<DocumentReference> get userRefs => _userRefs ?? const [];
  bool hasUserRefs() => _userRefs != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "push_notification" field.
  bool? _pushNotification;
  bool get pushNotification => _pushNotification ?? false;
  bool hasPushNotification() => _pushNotification != null;

  // "location_service" field.
  bool? _locationService;
  bool get locationService => _locationService ?? false;
  bool hasLocationService() => _locationService != null;

  // "email_notification" field.
  bool? _emailNotification;
  bool get emailNotification => _emailNotification ?? false;
  bool hasEmailNotification() => _emailNotification != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _district = snapshotData['district'] as String?;
    _isHost = snapshotData['is_host'] as bool?;
    _isAdmin = snapshotData['is_admin'] as bool?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _dob = snapshotData['dob'] as DateTime?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _userStatus = snapshotData['user_status'] as String?;
    _userType = snapshotData['user_type'] as String?;
    _userRefs = getDataList(snapshotData['user_refs']);
    _address = snapshotData['address'] as String?;
    _bio = snapshotData['bio'] as String?;
    _pushNotification = snapshotData['push_notification'] as bool?;
    _locationService = snapshotData['location_service'] as bool?;
    _emailNotification = snapshotData['email_notification'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? district,
  bool? isHost,
  bool? isAdmin,
  String? firstName,
  String? lastName,
  DateTime? modifiedAt,
  DateTime? dob,
  DocumentReference? userRef,
  String? userStatus,
  String? userType,
  String? address,
  String? bio,
  bool? pushNotification,
  bool? locationService,
  bool? emailNotification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'district': district,
      'is_host': isHost,
      'is_admin': isAdmin,
      'first_name': firstName,
      'last_name': lastName,
      'modified_at': modifiedAt,
      'dob': dob,
      'user_ref': userRef,
      'user_status': userStatus,
      'user_type': userType,
      'address': address,
      'bio': bio,
      'push_notification': pushNotification,
      'location_service': locationService,
      'email_notification': emailNotification,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.district == e2?.district &&
        e1?.isHost == e2?.isHost &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.dob == e2?.dob &&
        e1?.userRef == e2?.userRef &&
        e1?.userStatus == e2?.userStatus &&
        e1?.userType == e2?.userType &&
        listEquality.equals(e1?.userRefs, e2?.userRefs) &&
        e1?.address == e2?.address &&
        e1?.bio == e2?.bio &&
        e1?.pushNotification == e2?.pushNotification &&
        e1?.locationService == e2?.locationService &&
        e1?.emailNotification == e2?.emailNotification;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.district,
        e?.isHost,
        e?.isAdmin,
        e?.firstName,
        e?.lastName,
        e?.modifiedAt,
        e?.dob,
        e?.userRef,
        e?.userStatus,
        e?.userType,
        e?.userRefs,
        e?.address,
        e?.bio,
        e?.pushNotification,
        e?.locationService,
        e?.emailNotification
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
