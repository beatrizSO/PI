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

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "user_address" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  bool hasUserAddress() => _userAddress != null;

  // "product_total" field.
  double? _productTotal;
  double get productTotal => _productTotal ?? 0.0;
  bool hasProductTotal() => _productTotal != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "order_id" field.
  double? _orderId;
  double get orderId => _orderId ?? 0.0;
  bool hasOrderId() => _orderId != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _amount = castToType<int>(snapshotData['amount']);
    _userId = castToType<int>(snapshotData['user_id']);
    _userName = snapshotData['user_name'] as String?;
    _userAddress = snapshotData['user_address'] as String?;
    _productTotal = castToType<double>(snapshotData['product_total']);
    _productId = snapshotData['product_id'] as String?;
    _orderId = castToType<double>(snapshotData['order_id']);
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
  int? amount,
  int? userId,
  String? userName,
  String? userAddress,
  double? productTotal,
  String? productId,
  double? orderId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'amount': amount,
      'user_id': userId,
      'user_name': userName,
      'user_address': userAddress,
      'product_total': productTotal,
      'product_id': productId,
      'order_id': orderId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.amount == e2?.amount &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.userAddress == e2?.userAddress &&
        e1?.productTotal == e2?.productTotal &&
        e1?.productId == e2?.productId &&
        e1?.orderId == e2?.orderId;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.date,
        e?.amount,
        e?.userId,
        e?.userName,
        e?.userAddress,
        e?.productTotal,
        e?.productId,
        e?.orderId
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
