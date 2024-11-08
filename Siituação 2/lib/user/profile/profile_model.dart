import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name_Create widget.
  FocusNode? nameCreateFocusNode;
  TextEditingController? nameCreateTextController;
  String? Function(BuildContext, String?)? nameCreateTextControllerValidator;
  // State field(s) for email_Create widget.
  FocusNode? emailCreateFocusNode1;
  TextEditingController? emailCreateTextController1;
  String? Function(BuildContext, String?)? emailCreateTextController1Validator;
  // State field(s) for email_Create widget.
  FocusNode? emailCreateFocusNode2;
  TextEditingController? emailCreateTextController2;
  String? Function(BuildContext, String?)? emailCreateTextController2Validator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
  }

  @override
  void dispose() {
    nameCreateFocusNode?.dispose();
    nameCreateTextController?.dispose();

    emailCreateFocusNode1?.dispose();
    emailCreateTextController1?.dispose();

    emailCreateFocusNode2?.dispose();
    emailCreateTextController2?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();
  }
}
