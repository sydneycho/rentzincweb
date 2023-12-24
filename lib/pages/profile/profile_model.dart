import '/auth/firebase_auth/auth_util.dart';
import '/components/footer/footer_widget.dart';
import '/components/loginheader/loginheader_widget.dart';
import '/components/notificationsettings/notificationsettings_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

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
    loginheaderModel.dispose();
    footerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
