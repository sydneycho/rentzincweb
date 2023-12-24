import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'allchats_model.dart';
export 'allchats_model.dart';

class AllchatsWidget extends StatefulWidget {
  const AllchatsWidget({Key? key}) : super(key: key);

  @override
  _AllchatsWidgetState createState() => _AllchatsWidgetState();
}

class _AllchatsWidgetState extends State<AllchatsWidget> {
  late AllchatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllchatsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'Allchats',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              'chats',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
              child: StreamBuilder<List<ChatsRecord>>(
                stream: queryChatsRecord(
                  queryBuilder: (chatsRecord) => chatsRecord
                      .where(
                        'users',
                        arrayContains: currentUserReference,
                      )
                      .orderBy('last_message_time', descending: true),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<ChatsRecord> listViewChatsRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewChatsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewChatsRecord =
                          listViewChatsRecordList[listViewIndex];
                      return StreamBuilder<FFChatInfo>(
                        stream: FFChatManager.instance
                            .getChatInfo(chatRecord: listViewChatsRecord),
                        builder: (context, snapshot) {
                          final chatInfo =
                              snapshot.data ?? FFChatInfo(listViewChatsRecord);
                          return FFChatPreview(
                            onTap: () => context.pushNamed(
                              'Chat',
                              queryParameters: {
                                'chatUser': serializeParam(
                                  chatInfo.otherUsers.length == 1
                                      ? chatInfo.otherUsersList.first
                                      : null,
                                  ParamType.Document,
                                ),
                                'chatRef': serializeParam(
                                  chatInfo.chatRecord.reference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'chatUser': chatInfo.otherUsers.length == 1
                                    ? chatInfo.otherUsersList.first
                                    : null,
                              },
                            ),
                            lastChatText: chatInfo.chatPreviewMessage(),
                            lastChatTime: listViewChatsRecord.lastMessageTime,
                            seen: listViewChatsRecord.lastMessageSeenBy!
                                .contains(currentUserReference),
                            title: chatInfo.chatPreviewTitle(),
                            userProfilePic: chatInfo.chatPreviewPic(),
                            color: Color(0xFFEEF0F5),
                            unreadColor: Colors.blue,
                            titleTextStyle: GoogleFonts.getFont(
                              'DM Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                            dateTextStyle: GoogleFonts.getFont(
                              'DM Sans',
                              color: Color(0x73000000),
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),
                            previewTextStyle: GoogleFonts.getFont(
                              'DM Sans',
                              color: Color(0x73000000),
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),
                            contentPadding: EdgeInsets.all(3.0),
                            borderRadius: BorderRadius.circular(0.0),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ));
  }
}
