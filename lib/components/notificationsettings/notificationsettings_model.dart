import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'notificationsettings_widget.dart' show NotificationsettingsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class NotificationsettingsModel
    extends FlutterFlowModel<NotificationsettingsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue1;
  AudioPlayer? soundPlayer1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  AudioPlayer? soundPlayer2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  AudioPlayer? soundPlayer3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
