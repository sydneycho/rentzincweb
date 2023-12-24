import '/backend/backend.dart';
import '/components/footer/footer_widget.dart';
import '/components/loginheader/loginheader_widget.dart';
import '/components/reviewss/reviewss_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reviews_widget.dart' show ReviewsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewsModel extends FlutterFlowModel<ReviewsWidget> {
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
