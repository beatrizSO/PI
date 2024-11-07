import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  CartRecord? cardCreation;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<CartRecord>? queryCart;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
