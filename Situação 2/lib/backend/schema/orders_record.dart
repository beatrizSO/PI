import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "order_id" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  bool hasOrderId() => _orderId != null;

  // "product_total" field.
  int? _productTotal;
  int get productTotal => _productTotal ?? 0;
  bool hasProductTotal() => _productTotal != null;

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  bool hasProductId() => _productId != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  bool hasUserId() => _userId != null;

  // "user_name" field.
  DocumentReference? _userName;
  DocumentReference? get userName => _userName;
  bool hasUserName() => _userName != null;

  // "user_address" field.
  DocumentReference? _userAddress;
  DocumentReference? get userAddress => _userAddress;
  bool hasUserAddress() => _userAddress != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _orderId = castToType<int>(snapshotData['order_id']);
    _productTotal = castToType<int>(snapshotData['product_total']);
    _productId = castToType<int>(snapshotData['product_id']);
    _amount = castToType<int>(snapshotData['amount']);
    _userId = castToType<int>(snapshotData['user_id']);
    _userName = snapshotData['user_name'] as DocumentReference?;
    _userAddress = snapshotData['user_address'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? date,
  int? orderId,
  int? productTotal,
  int? productId,
  int? amount,
  int? userId,
  DocumentReference? userName,
  DocumentReference? userAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'order_id': orderId,
      'product_total': productTotal,
      'product_id': productId,
      'amount': amount,
      'user_id': userId,
      'user_name': userName,
      'user_address': userAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.orderId == e2?.orderId &&
        e1?.productTotal == e2?.productTotal &&
        e1?.productId == e2?.productId &&
        e1?.amount == e2?.amount &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.userAddress == e2?.userAddress;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.date,
        e?.orderId,
        e?.productTotal,
        e?.productId,
        e?.amount,
        e?.userId,
        e?.userName,
        e?.userAddress
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
