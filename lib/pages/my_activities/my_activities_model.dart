import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/booking/booking_widget.dart';
import '/components/empty/empty_widget.dart';
import '/components/review/review_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_activities_widget.dart' show MyActivitiesWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MyActivitiesModel extends FlutterFlowModel<MyActivitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // State field(s) for ListView widget.
  ScrollController? listViewController3;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for ListView widget.
  ScrollController? listViewController4;
  // State field(s) for ListView widget.
  ScrollController? listViewController5;
  // State field(s) for ListView widget.
  ScrollController? listViewController6;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
    listViewController3 = ScrollController();
    listViewController4 = ScrollController();
    listViewController5 = ScrollController();
    listViewController6 = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController1?.dispose();
    listViewController1?.dispose();
    listViewController2?.dispose();
    listViewController3?.dispose();
    tabBarController2?.dispose();
    listViewController4?.dispose();
    listViewController5?.dispose();
    listViewController6?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
