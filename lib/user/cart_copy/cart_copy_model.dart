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
  // State field(s) for email_Create widget.
  FocusNode? emailCreateFocusNode1;
  TextEditingController? emailCreateTextController1;
  String? Function(BuildContext, String?)? emailCreateTextController1Validator;
  // State field(s) for email_Create widget.
  FocusNode? emailCreateFocusNode2;
  TextEditingController? emailCreateTextController2;
  String? Function(BuildContext, String?)? emailCreateTextController2Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CartRecord>? orderedProduct;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailCreateFocusNode1?.dispose();
    emailCreateTextController1?.dispose();

    emailCreateFocusNode2?.dispose();
    emailCreateTextController2?.dispose();
  }
}
