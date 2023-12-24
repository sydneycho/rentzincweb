import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loginedsidebar_model.dart';
export 'loginedsidebar_model.dart';

class LoginedsidebarWidget extends StatefulWidget {
  const LoginedsidebarWidget({Key? key}) : super(key: key);

  @override
  _LoginedsidebarWidgetState createState() => _LoginedsidebarWidgetState();
}

class _LoginedsidebarWidgetState extends State<LoginedsidebarWidget> {
  late LoginedsidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginedsidebarModel());

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

    return Align(
      alignment: AlignmentDirectional(1.0, -1.0),
      child: Container(
        width: 270.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF1F4F8),
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            color: Color(0xFFE5E7EB),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.car_repair,
                      color: Color(0xFF6F61EF),
                      size: 30.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Rentz',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0x4D9489F5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              fadeInDuration: Duration(milliseconds: 200),
                              fadeOutDuration: Duration(milliseconds: 200),
                              imageUrl: currentUserPhoto,
                              width: 44.0,
                              height: 44.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                valueOrDefault(
                                    currentUserDocument?.firstName, ''),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF15161E),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                currentUserEmail,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF606A85),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 12.0,
                thickness: 2.0,
                color: Color(0xFFE5E7EB),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Platform Navigation',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);

                          context.pushNamed(
                            'Home',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 100),
                              ),
                            },
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F4F8),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.space_dashboard,
                                  color: Color(0xFF15161E),
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Home',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);

                          context.pushNamed(
                            'Allchats',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                              ),
                            },
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F4F8),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.forum_rounded,
                                  color: Color(0xFF15161E),
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Chats',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);

                          context.pushNamed(
                            'MyActivities',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                              ),
                            },
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F4F8),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.work,
                                  color: Color(0xFF15161E),
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'My Activities',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Settings',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);

                          context.pushNamed(
                            'Notifications',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 80),
                              ),
                            },
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Color(0x4D9489F5),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.notifications_rounded,
                                  color: Color(0xFF6F61EF),
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Notifications',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                                StreamBuilder<List<NotificationRecord>>(
                                  stream: queryNotificationRecord(
                                    queryBuilder: (notificationRecord) =>
                                        notificationRecord
                                            .where(
                                              'posting_status',
                                              isEqualTo: 'posted',
                                            )
                                            .where(
                                              'notification_status',
                                              isEqualTo: 'unread',
                                            ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<NotificationRecord>
                                        containerNotificationRecordList =
                                        snapshot.data!;
                                    return Container(
                                      height: 32.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 4.0),
                                          child: Text(
                                            formatNumber(
                                              containerNotificationRecordList
                                                  .length,
                                              formatType: FormatType.custom,
                                              format: '00',
                                              locale: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);

                          context.pushNamed(
                            'Wallet',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 80),
                              ),
                            },
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F4F8),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.attach_money_rounded,
                                  color: Color(0xFF15161E),
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Wallet',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('Index', context.mounted);
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F4F8),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.wifi_tethering_rounded,
                                  color: Color(0xFF15161E),
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Logout',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF15161E),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
              if (Theme.of(context).brightness == Brightness.light)
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
                    child: Container(
                      width: 250.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F4F8),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color(0xFFE5E7EB),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setDarkModeSetting(context, ThemeMode.light);
                                },
                                child: Container(
                                  width: 115.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.white
                                        : Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: valueOrDefault<Color>(
                                        Theme.of(context).brightness ==
                                                Brightness.light
                                            ? Color(0xFFE5E7EB)
                                            : Color(0xFFF1F4F8),
                                        Color(0xFFE5E7EB),
                                      ),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.wb_sunny_rounded,
                                        color: Theme.of(context).brightness ==
                                                Brightness.light
                                            ? Color(0xFF15161E)
                                            : Color(0xFF606A85),
                                        size: 16.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Light Mode',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.light
                                                    ? Color(0xFF15161E)
                                                    : Color(0xFF606A85),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setDarkModeSetting(context, ThemeMode.dark);
                                },
                                child: Container(
                                  width: 115.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: valueOrDefault<Color>(
                                        Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Color(0xFFE5E7EB)
                                            : Color(0xFFF1F4F8),
                                        Color(0xFFF1F4F8),
                                      ),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.nightlight_round,
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Color(0xFF15161E)
                                            : Color(0xFF606A85),
                                        size: 16.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Dark Mode',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Color(0xFF15161E)
                                                    : Color(0xFF606A85),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              Divider(
                height: 12.0,
                thickness: 2.0,
                color: Color(0xFFE5E7EB),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.menu_open_rounded,
                        color: Color(0xFF606A85),
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
