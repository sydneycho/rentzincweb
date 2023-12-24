import '/backend/backend.dart';
import '/components/empty/empty_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'index_widget.dart' show IndexWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class IndexModel extends FlutterFlowModel<IndexWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Footer component.
  late FooterModel footerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    footerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
