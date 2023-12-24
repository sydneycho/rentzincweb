import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/footer/footer_widget.dart';
import '/components/loginheader/loginheader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'addpayment_model.dart';
export 'addpayment_model.dart';

class AddpaymentWidget extends StatefulWidget {
  const AddpaymentWidget({Key? key}) : super(key: key);

  @override
  _AddpaymentWidgetState createState() => _AddpaymentWidgetState();
}

class _AddpaymentWidgetState extends State<AddpaymentWidget> {
  late AddpaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddpaymentModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.phonenumberController ??= TextEditingController();
    _model.phonenumberFocusNode ??= FocusNode();

    _model.addressController ??= TextEditingController();
    _model.addressFocusNode ??= FocusNode();

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
        title: 'Addpayment',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.loginheaderModel,
                    updateCallback: () => setState(() {}),
                    child: LoginheaderWidget(),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'First Name',
                                hintText: 'Enter first name',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyLarge,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Last Name',
                                hintText: 'Enter last name',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyLarge,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: TextFormField(
                              controller: _model.textController3,
                              focusNode: _model.textFieldFocusNode3,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Account number',
                                hintText: 'Enter Account No',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyLarge,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: TextFormField(
                              controller: _model.phonenumberController,
                              focusNode: _model.phonenumberFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Phone number',
                                hintText: 'Enter  Mobile money No',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyLarge,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.phonenumberControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: TextFormField(
                              controller: _model.addressController,
                              focusNode: _model.addressFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Billing address',
                                hintText: 'Enter  Billing address',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyLarge,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              maxLines: 5,
                              validator: _model.addressControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }

                              await CardDetailsRecord.collection
                                  .doc()
                                  .set(createCardDetailsRecordData(
                                    billingAddress:
                                        _model.addressController.text,
                                    cardNo: int.tryParse(
                                        _model.textController3.text),
                                    nameOnCard:
                                        '${_model.textController1.text} ${_model.textController2.text}',
                                    phoneNumber:
                                        '${_model.phonenumberController.text}',
                                  ));
                            },
                            text: 'Save',
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.footerModel,
                    updateCallback: () => setState(() {}),
                    child: FooterWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
