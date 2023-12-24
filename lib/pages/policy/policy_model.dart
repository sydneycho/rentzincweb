import '/components/footer/footer_widget.dart';
import '/components/loginheader/loginheader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'policy_widget.dart' show PolicyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PolicyModel extends FlutterFlowModel<PolicyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Loginheader component.
  late LoginheaderModel loginheaderModel;
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
    footerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
