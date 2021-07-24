import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTransactionWidget extends StatefulWidget {
  NewTransactionWidget({Key key}) : super(key: key);

  @override
  _NewTransactionWidgetState createState() => _NewTransactionWidgetState();
}

class _NewTransactionWidgetState extends State<NewTransactionWidget> {
  TextEditingController catNameController;
  TextEditingController transNameController;
  TextEditingController priceController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    catNameController = TextEditingController();
    transNameController = TextEditingController();
    priceController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 44, 12, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFF1A1F24),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.tertiaryColor,
                          size: 24,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Color(0xFF131619),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          color: Color(0x5D000000),
                          offset: Offset(0, -2),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                                child: Text(
                                  'Add Transaction',
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFF6F5F4),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                                child: Text(
                                  'Fill out the details below to add a new transaction.',
                                  style: FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: TextFormField(
                              controller: transNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Transaction Name',
                                labelStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Enter name...',
                                hintStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xFF1A1F24),
                                prefixIcon: Icon(
                                  Icons.attach_money_outlined,
                                  color: Color(0xFF8B97A2),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: TextFormField(
                              controller: catNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Category',
                                labelStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Enter category...',
                                hintStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xFF1A1F24),
                                prefixIcon: Icon(
                                  Icons.category,
                                  color: Color(0xFF8B97A2),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: TextFormField(
                              controller: priceController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'How much you paid...',
                                hintStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xFF1A1F24),
                                prefixIcon: FaIcon(
                                  FontAwesomeIcons.coins,
                                  color: Color(0xFF8B97A2),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 18, 16, 0),
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
                                    width: 130,
                                    height: 50,
                                    color: Color(0xFF131619),
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.tertiaryColor,
                                      fontSize: 16,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    final transactionsCreateData =
                                        createTransactionsRecordData(
                                      name: transNameController.text,
                                      price: double.parse(priceController.text),
                                      description: catNameController.text,
                                      createdAt: getCurrentTimestamp,
                                    );
                                    await TransactionsRecord.collection
                                        .doc()
                                        .set(transactionsCreateData);
                                    Navigator.pop(context);
                                  },
                                  text: 'Accept',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 50,
                                    color: FlutterFlowTheme.primaryColor,
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 8,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
