import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rentzpay_model.dart';
export 'rentzpay_model.dart';

class RentzpayWidget extends StatefulWidget {
  const RentzpayWidget({
    Key? key,
    required this.carref,
  }) : super(key: key);

  final DocumentReference? carref;

  @override
  _RentzpayWidgetState createState() => _RentzpayWidgetState();
}

class _RentzpayWidgetState extends State<RentzpayWidget> {
  late RentzpayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RentzpayModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Only click proceed  when the payment is successfull otherwise your booking will considered as payment pending.After you have made the payment ,screenshot the whole page and copy the reference key above .The reference key and screenshot can be used to complain if the payment  issue arises.',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: Duration(milliseconds: 10000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    });

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
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: FutureBuilder<CarRecord>(
          future: CarRecord.getDocumentOnce(widget.carref!),
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
            final containerCarRecord = snapshot.data!;
            return Container(
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Text(
                                      containerCarRecord.reference.id,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text:
                                              containerCarRecord.reference.id));
                                    },
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 1.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 2.0, 5.0, 5.0),
                                        child: Text(
                                          'copy',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 30.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'After you have made the payment ,screenshot the whole page and copy the reference key above .The reference key and screenshot can be used to complain if the payment  issue arises.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.info_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FlutterFlowWebView(
                      content: 'https://rentzpay.in/',
                      bypass: false,
                      width: MediaQuery.sizeOf(context).width * 0.96,
                      height: MediaQuery.sizeOf(context).height * 0.75,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              await BookingRecord.createDoc(widget.carref!)
                                  .set(createBookingRecordData(
                                subtotal: FFAppState().subtotal,
                                startdate: FFAppState().startdate,
                                enddate: FFAppState().enddate,
                                totalcost: FFAppState().totalcost,
                                numberofdays: functions.numberofdays(
                                    FFAppState().startdate,
                                    FFAppState().enddate),
                                uid: currentUserReference,
                                renteeName:
                                    '${valueOrDefault(currentUserDocument?.firstName, '')}    ${valueOrDefault(currentUserDocument?.lastName, '')}',
                                renteeEmail: currentUserEmail,
                                renteePhoneNumber: currentPhoneNumber,
                                renteePhoto: currentUserPhoto,
                                bookingStatus: 'booked',
                              ));
                              setState(() {
                                FFAppState().totalcosts =
                                    FFAppState().totalcosts +
                                        FFAppState().totalcost;
                              });

                              await widget.carref!.update(createCarRecordData(
                                numberofdays: functions.numberofdays(
                                    FFAppState().startdate,
                                    FFAppState().enddate),
                                enddate: FFAppState().enddate,
                              ));

                              await PaymentRecord.collection
                                  .doc()
                                  .set(createPaymentRecordData(
                                    amount: FFAppState().totalcost,
                                    carName: containerCarRecord.carName,
                                    createdAt: getCurrentTimestamp,
                                    renteePhoneNumber: currentPhoneNumber,
                                    status: 'pending',
                                    vendorEmail: containerCarRecord.vendorEmail,
                                    vendorName: containerCarRecord.vendorName,
                                    vendorPhoneNumber:
                                        containerCarRecord.vendorPhoneNumber,
                                    vendorPhoto: containerCarRecord.vendorPhoto,
                                  ));

                              context.pushNamed(
                                'booking_alert',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.leftToRight,
                                  ),
                                },
                              );
                            },
                            text: 'Proceed',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
