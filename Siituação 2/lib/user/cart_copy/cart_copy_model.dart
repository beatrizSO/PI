import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_copy_widget.dart' show CartCopyWidget;
import 'package:flutter/material.dart';

class CartCopyModel extends FlutterFlowModel<CartCopyWidget> {
  ///  Local state fields for this page.

  double? price;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in CartCopy widget.
  List<CartRecord>? pagaLoad;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CartRecord>? deleteQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CartRecord>? updateQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CartRecord>? orderedProduct;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
