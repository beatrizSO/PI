import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderedProductRecord extends FirestoreRecord {
  OrderedProductRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "orderID" field.
  String? _orderID;
  String get orderID => _orderID ?? '';
  bool hasOrderID() => _orderID != null;

  // "orderValue" field.
  double? _orderValue;
  double get orderValue => _orderValue ?? 0.0;
  bool hasOrderValue() => _orderValue != null;

  // "Products" field.
  List<DocumentReference>? _products;
  List<DocumentReference> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "user_address" field.
  DocumentReference? _userAddress;
  DocumentReference? get userAddress => _userAddress;
  bool hasUserAddress() => _userAddress != null;

  // "user_name" field.
  DocumentReference? _userName;
  DocumentReference? get userName => _userName;
  bool hasUserName() => _userName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _orderID = snapshotData['orderID'] as String?;
    _orderValue = castToType<double>(snapshotData['orderValue']);
    _products = getDataList(snapshotData['Products']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _userAddress = snapshotData['user_address'] as DocumentReference?;
    _userName = snapshotData['user_name'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('orderedProduct')
          : FirebaseFirestore.instance.collectionGroup('orderedProduct');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('orderedProduct').doc(id);

  static Stream<OrderedProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderedProductRecord.fromSnapshot(s));

  static Future<OrderedProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderedProductRecord.fromSnapshot(s));

  static OrderedProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderedProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderedProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderedProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderedProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderedProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderedProductRecordData({
  String? orderID,
  double? orderValue,
  DocumentReference? userRef,
  DocumentReference? userAddress,
  DocumentReference? userName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderID': orderID,
      'orderValue': orderValue,
      'userRef': userRef,
      'user_address': userAddress,
      'user_name': userName,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderedProductRecordDocumentEquality
    implements Equality<OrderedProductRecord> {
  const OrderedProductRecordDocumentEquality();

  @override
  bool equals(OrderedProductRecord? e1, OrderedProductRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderID == e2?.orderID &&
        e1?.orderValue == e2?.orderValue &&
        listEquality.equals(e1?.products, e2?.products) &&
        e1?.userRef == e2?.userRef &&
        e1?.userAddress == e2?.userAddress &&
        e1?.userName == e2?.userName;
  }

  @override
  int hash(OrderedProductRecord? e) => const ListEquality().hash([
        e?.orderID,
        e?.orderValue,
        e?.products,
        e?.userRef,
        e?.userAddress,
        e?.userName
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderedProductRecord;
}
