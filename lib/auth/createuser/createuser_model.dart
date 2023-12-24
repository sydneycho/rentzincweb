import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/footer/footer_widget.dart';
import '/components/loginheader/loginheader_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'createuser_widget.dart' show CreateuserWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class CreateuserModel extends FlutterFlowModel<CreateuserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for Loginheader component.
  late LoginheaderModel loginheaderModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  AudioPlayer? soundPlayer;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Model for Footer component.
  late FooterModel footerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginheaderModel = createModel(context, () => LoginheaderModel());
    textController1Validator = _textController1Validator;
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

    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    footerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
