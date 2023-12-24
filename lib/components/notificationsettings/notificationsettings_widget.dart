import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'notificationsettings_model.dart';
export 'notificationsettings_model.dart';

class NotificationsettingsWidget extends StatefulWidget {
  const NotificationsettingsWidget({Key? key}) : super(key: key);

  @override
  _NotificationsettingsWidgetState createState() =>
      _NotificationsettingsWidgetState();
}

class _NotificationsettingsWidgetState
    extends State<NotificationsettingsWidget> {
  late NotificationsettingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Text(
                          'Choose what notifcations you want to recieve below and we will update the settings.',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.cancel_outlined,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'Push notifications',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Text(
                          'Receive Push notifications from our \napplication on a semi regular basis.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    AuthUserStreamWidget(
                      builder: (context) => Switch.adaptive(
                        value: _model.switchValue1 ??= valueOrDefault<bool>(
                            currentUserDocument?.pushNotification, false),
                        onChanged: (newValue) async {
                          setState(() => _model.switchValue1 = newValue!);
                          if (newValue!) {
                            _model.soundPlayer1 ??= AudioPlayer();
                            if (_model.soundPlayer1!.playing) {
                              await _model.soundPlayer1!.stop();
                            }
                            _model.soundPlayer1!.setVolume(1.0);
                            _model.soundPlayer1!
                                .setUrl(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/rentx-client-tyq9i9/assets/ciho2r8weoz9/QKTA234-pop.mp3')
                                .then((_) => _model.soundPlayer1!.play());
                          }
                        },
                        activeColor: FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                        inactiveTrackColor:
                            FlutterFlowTheme.of(context).alternate,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'Email notifications',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Text(
                          'Receive email notifications from our \nmarketing team about new features.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    AuthUserStreamWidget(
                      builder: (context) => Switch.adaptive(
                        value: _model.switchValue2 ??= valueOrDefault<bool>(
                            currentUserDocument?.emailNotification, false),
                        onChanged: (newValue) async {
                          setState(() => _model.switchValue2 = newValue!);
                          if (newValue!) {
                            _model.soundPlayer2 ??= AudioPlayer();
                            if (_model.soundPlayer2!.playing) {
                              await _model.soundPlayer2!.stop();
                            }
                            _model.soundPlayer2!.setVolume(1.0);
                            _model.soundPlayer2!
                                .setUrl(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/rentx-client-tyq9i9/assets/ciho2r8weoz9/QKTA234-pop.mp3')
                                .then((_) => _model.soundPlayer2!.play());
                          }
                        },
                        activeColor: FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                        inactiveTrackColor:
                            FlutterFlowTheme.of(context).alternate,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'Location Services',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Text(
                          'Allow us to track your location, this helps\n keep track of spending and keeps you safe.',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    AuthUserStreamWidget(
                      builder: (context) => Switch.adaptive(
                        value: _model.switchValue3 ??= valueOrDefault<bool>(
                            currentUserDocument?.locationService, false),
                        onChanged: (newValue) async {
                          setState(() => _model.switchValue3 = newValue!);
                          if (newValue!) {
                            _model.soundPlayer3 ??= AudioPlayer();
                            if (_model.soundPlayer3!.playing) {
                              await _model.soundPlayer3!.stop();
                            }
                            _model.soundPlayer3!.setVolume(1.0);
                            _model.soundPlayer3!
                                .setUrl(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/rentx-client-tyq9i9/assets/ciho2r8weoz9/QKTA234-pop.mp3')
                                .then((_) => _model.soundPlayer3!.play());
                          }
                        },
                        activeColor: FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                        inactiveTrackColor:
                            FlutterFlowTheme.of(context).alternate,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 24.0, 10.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await currentUserReference!.update(createUserRecordData());
                  },
                  text: 'Save Changes',
                  options: FFButtonOptions(
                    width: 190.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
