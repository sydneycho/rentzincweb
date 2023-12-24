import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty/empty_widget.dart';
import '/components/footer/footer_widget.dart';
import '/components/loginheader/loginheader_widget.dart';
import '/components/searchc/searchc_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/request_manager.dart';

import 'home_widget.dart' show HomeWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Loginheader component.
  late LoginheaderModel loginheaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // Model for Footer component.
  late FooterModel footerModel;

  /// Query cache managers for this widget.

  final _carsManager = StreamRequestManager<List<CarRecord>>();
  Stream<List<CarRecord>> cars({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CarRecord>> Function() requestFn,
  }) =>
      _carsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCarsCache() => _carsManager.clear();
  void clearCarsCacheKey(String? uniqueKey) =>
      _carsManager.clearRequest(uniqueKey);

  final _allcarsManager = StreamRequestManager<List<CarRecord>>();
  Stream<List<CarRecord>> allcars({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CarRecord>> Function() requestFn,
  }) =>
      _allcarsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllcarsCache() => _allcarsManager.clear();
  void clearAllcarsCacheKey(String? uniqueKey) =>
      _allcarsManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginheaderModel = createModel(context, () => LoginheaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  void dispose() {
    unfocusNode.dispose();
    loginheaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    footerModel.dispose();

    /// Dispose query cache managers for this widget.

    clearCarsCache();

    clearAllcarsCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
