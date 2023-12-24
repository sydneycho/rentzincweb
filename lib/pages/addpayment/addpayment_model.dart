import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/footer/footer_widget.dart';
import '/components/loginheader/loginheader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'addpayment_widget.dart' show AddpaymentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddpaymentModel extends FlutterFlowModel<AddpaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for Loginheader component.
  late LoginheaderModel loginheaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberController;
  String? Function(BuildContext, String?)? phonenumberControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // Model for Footer component.
  late FooterModel footerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginheaderModel = createModel(context, () => LoginheaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  void dispose() {
    unfocusNode.dispose();
    loginheaderModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    phonenumberFocusNode?.dispose();
    phonenumberController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    footerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
